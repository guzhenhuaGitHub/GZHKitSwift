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
func delay(time: TimeInterval, task: @escaping () -> Void) -> Task? {

    func dispatch_later(block: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: block)
    }

    let closure = DispatchWorkItem(block: task)

    let delayedClosure: Task = { cancel in
        guard cancel == false else { return }
        DispatchQueue.main.async(execute: closure)
    }

    dispatch_later {
        delayedClosure(false)
    }

    return delayedClosure
}

func cancel(task: Task?) {
    task?(true)
}
