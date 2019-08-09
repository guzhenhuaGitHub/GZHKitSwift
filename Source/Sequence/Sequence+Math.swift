//
//  Sequence+Math.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/3.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension Sequence where Element: RawRepresentable & Equatable {
    /// 求交集
    static func + (lhs: Self, rhs: Self) -> [Iterator.Element] {
        return lhs.filter(rhs.contains)
    }
    /// 求差集
    static func - (lhs: Self, rhs: Self) -> [Iterator.Element] {
        return lhs.filter { rhs.contains($0) == false }
    }
}
