//
//  Sequence+Math.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/3.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {

    /// 数组相加
    static func + (lhs: [Element], rhs: [Element]) -> [Element] {
        var result = lhs
        result.append(contentsOf: rhs)
        return result
    }

    /// 数组相加
    static func += (lhs: inout [Element], rhs: [Element]) {
        return lhs = lhs + rhs
    }

    /// 数组相减
    static func - (lhs: [Element], rhs: [Element]) -> [Element] {
        return lhs.filter { rhs.contains($0) == false }
    }

    /// 数组相减
    static func -= (lhs: inout [Element], rhs: [Element]) {
        lhs = lhs - rhs
    }
}
