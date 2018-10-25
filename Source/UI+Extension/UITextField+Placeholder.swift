//
//  TextFieldPlaceholder.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UITextField

private struct KeyPath {
    static let placeholderColor = "placeholderLabel.textColor"
}

public extension GZHKit where Base: UITextField {
    public var placeholderColor: UIColor? {
        get {
            return base.value(forKeyPath: KeyPath.placeholderColor) as? UIColor
        }
        set {
            // 懒加载占位符控件
            let oldPlaceholder = base.placeholder
            base.placeholder = ""
            base.placeholder = oldPlaceholder
            // KVO设置占位符颜色
            let newColor = newValue ?? UIColor(red: 0, green: 0, blue: 0.0980392, alpha: 0.22)
            base.setValue(newColor, forKey: KeyPath.placeholderColor)
        }
    }
}
