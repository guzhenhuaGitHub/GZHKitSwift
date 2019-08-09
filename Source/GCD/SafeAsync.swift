//
//  SafeAsync.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/7/16.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    // This method will dispatch the `block` to self.
    // If `self` is the main queue, and current thread is main thread, the block
    // will be invoked immediately instead of being dispatched.
    func safeAsync(_ closure: @escaping () -> Void) {
        if self === DispatchQueue.main && Thread.isMainThread {
            closure()
        } else {
            async(execute: closure)
        }
    }
}
