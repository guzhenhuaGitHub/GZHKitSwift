//
//  Delay.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/5/29.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

typealias Task = (_ cancel: Bool) -> Void

@discardableResult
func delay(time: TimeInterval, execute work: @escaping () -> Void) -> Task? {

    func dispatch_later(block: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: block)
    }

    var workItem: DispatchWorkItem? = DispatchWorkItem(block: work)
    var result: Task?

    let delayedClosure: Task = { cancel in
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

func cancel(task: Task?) {
    task?(true)
}
