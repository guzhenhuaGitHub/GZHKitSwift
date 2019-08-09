//
//  Sequence+KeyPath.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/5/5.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension Sequence {

    /// map with keyPath
    /// usage:
    ///     array.map(\.someProperty)
    /// equivalent to:
    ///     array.map { $0.someProperty }
    ///
    func map<T>(_ keyPath: KeyPath<Element, T>) -> [T] {
        return map {
            $0[keyPath: keyPath]
        }
    }
}

public extension Sequence {

    /// sorted by keyPath
    /// usage:
    ///     array.sorted(by: \.someProperty)
    /// equivalent to:
    ///     array.sorted { $0.someProperty < $1.somProperty }
    ///
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted { a, b in
            a[keyPath: keyPath] < b[keyPath: keyPath]
        }
    }
}
