//
//  AnyOf.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/8/23.
//  Copyright © 2018年 顾振华. All rights reserved.
//

/* Read from [https://gist.github.com/JohnSundell/1956ce36b9303eb4bf912da0de9e2844]
 *
 *   -- Before:
 *   if string == "One" || string == "Two" || string == "Three" {
 *       ...
 *   }
 *
 *   -- Now:
 *   if string == any(of: "One", "Two", "Three") {
 *       ...
 *   }
 */

import Foundation

struct EquatableValueSequence<T: Equatable> {
    static func == (lhs: EquatableValueSequence<T>, rhs: T) -> Bool {
        return lhs.values.contains(rhs)
    }

    static func == (lhs: T, rhs: EquatableValueSequence<T>) -> Bool {
        return rhs == lhs
    }

    fileprivate let values: [T]
}

func any<T: Equatable>(of values: T...) -> EquatableValueSequence<T> {
    return EquatableValueSequence(values: values)
}
