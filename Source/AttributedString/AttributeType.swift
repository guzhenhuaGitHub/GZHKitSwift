//
//  AttributeType.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/28.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import UIKit

public enum AttributeType {
    case backgroundColor(UIColor)
    case foregroundColor(UIColor)
    case font(UIFont)
    case strikethroughStyle(NSUnderlineStyle)
    // 更多属性待添加
}

public extension AttributeType {
    var key: NSAttributedString.Key {
        switch self {
        case .backgroundColor:          return .backgroundColor
        case .foregroundColor:          return .foregroundColor
        case .font:                     return .font
        case .strikethroughStyle:       return .strikethroughStyle
        }
    }

    var value: Any {
        switch self {
        case .backgroundColor(let value):           return value
        case .foregroundColor(let value):           return value
        case .font(let value):                      return value
        case .strikethroughStyle(let value):        return value.rawValue
        }
    }
}
