//
//  DispatchQueue+Extention.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/8/1.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    static var userInteractive: DispatchQueue {
        return .global(qos: .userInteractive)
    }
    static var userInitiated: DispatchQueue {
        return .global(qos: .userInitiated)
    }
    static var utility: DispatchQueue {
        return .global(qos: .utility)
    }
    static var background: DispatchQueue {
        return .global(qos: .background)
    }

    func after(_ delay: TimeInterval, execute workItem: DispatchWorkItem) {
        asyncAfter(deadline: .now() + delay, execute: workItem)
    }

    func after(_ delay: TimeInterval, execute closure: @escaping () -> Void) {
        after(delay, execute: DispatchWorkItem(block: closure))
    }

}
