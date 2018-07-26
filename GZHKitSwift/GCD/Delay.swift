//
//  Delay.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/5/29.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

public typealias TaskClosureType = (_ cancel: Bool) -> Void

@discardableResult
public func delay(time: TimeInterval, execute work: @escaping () -> Void) -> TaskClosureType? {

    func dispatch_later(block: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: block)
    }

    var workItem: DispatchWorkItem? = DispatchWorkItem(block: work)
    var result: TaskClosureType?

    let delayedClosure: TaskClosureType = { cancel in
        if let internalWorkItem = workItem, cancel == false {
            DispatchQueue.main.async(execute: internalWorkItem)
        }
        workItem = nil
        result = nil
    }

    result = delayedClosure

    dispatch_later {
        guard let delayedClosure = result else { return }
        delayedClosure(false)
    }

    return result
}

public func cancel(task: TaskClosureType?) {
    task?(true)
}
