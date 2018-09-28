//
//  LiteralDispatchTime.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/5/29.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

extension DispatchTime: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = DispatchTime.now() + .seconds(value)
    }
}

extension DispatchTime: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self = DispatchTime.now() + .milliseconds(Int(value * 1000))
    }
}
