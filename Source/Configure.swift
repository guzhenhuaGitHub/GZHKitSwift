//
// Created by 顾振华 on 2020/3/24.
// Copyright (c) 2020 顾振华. All rights reserved.
//

import Foundation

/* Inspired By: https://www.swiftbysundell.com/articles/writing-small-utility-functions-in-swift/ */

/// 设置对象的便利方法
///
/// before:
/// ```
///   let dateFormatter: DateFormatter = {
///       let formatter = DateFormatter()
///       formatter.dateFormat = "yyyy-MM-dd HH:mm"
///       formatter.timeZone = TimeZone(secondsFromGMT: 0)
///       return formatter
///   }()
/// ```
///
/// after:
/// ```
///   let dateFormatter = configure(DateFormatter()) {
///       $0.dateFormat = "yyyy-MM-dd HH:mm"
///       $0.timeZone = TimeZone(secondsFromGMT: 0)
///   }
/// ```
///
/// - Parameters:
///   - object: 设置对象
///   - closure: 设置内容
/// - Returns: 设置后的对象
func configure<T>(_ value: T, using closure: (inout T) throws -> Void) rethrows -> T {
    var value = value
    try closure(&value)
    return value
}
