//
//  String+RegularExpression.swift
//  RealtyNavi-Swift
//
//  Created by 顾振华 on 2017/11/28.
//  Copyright © 2017年 Lansi. All rights reserved.
//

import Foundation

// 自定义操作符 =~
// 定义优先级为比较运算类型等级
infix operator =~: ComparisonPrecedence

extension String {
    /// 正则表达式比较运算符
    static func =~ (lhs: String, rhs: String) -> Bool {
        return lhs.range(of: rhs, options: .regularExpression) != nil
    }
}
