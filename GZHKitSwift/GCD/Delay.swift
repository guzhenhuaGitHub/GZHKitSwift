//
//  Delay.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/5/29.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

@discardableResult
public func delay(time: TimeInterval, execute work: @escaping () -> Void) -> DispatchWorkItem {

    let workItem = DispatchWorkItem(block: work)
    DispatchQueue.main.after(time, execute: workItem)
    return workItem
}
