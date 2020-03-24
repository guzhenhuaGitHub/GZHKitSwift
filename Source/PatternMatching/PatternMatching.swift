//
//  PatternMatching.swift
//  DajiaZhongyi
//
//  Created by 顾振华 on 2019/11/18.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

/* Inspired By: https://www.swiftbysundell.com/articles/defining-custom-patterns-in-swift/ */

// MARK: - Pattern Matching with KeyPath

/// Pattern Matching with an **Optional** value by **KeyPath**
///
/// usage:
/// ```
/// switch aCharacter {
/// case \.isNewline:
///     break
/// case \.isNumber:
///
/// default:
/// }
/// ```
func ~= <T>(lhs: KeyPath<T, Bool>, rhs: T?) -> Bool {
    return rhs?[keyPath: lhs] ?? false
}

// MARK: - Customize Pattern Matching

/// A Customer Pattern Object
struct Pattern<Value> {
    let closure: (Value) -> Bool
}

/// Make **Pattern** can be Pattern Matched with an **Optional** value
func ~= <T>(lhs: Pattern<T>, rhs: T?) -> Bool {
    rhs.map(lhs.closure) ?? false
}

/// Pattern Matching with two Bool value keyPath
///
/// usage:
/// ```
/// switch aCharacter {
/// case \.isNumber && \.isWholeNumber:
///     print(true)
/// default:
///     print(false)
/// }
/// ```
func && <T>(lhs: KeyPath<T, Bool>, rhs: KeyPath<T, Bool>) -> Pattern<T> {
    Pattern { $0[keyPath: lhs] && $0[keyPath: rhs] }
}
