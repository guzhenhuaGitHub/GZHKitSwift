//
//  UserDefaults+Subscript.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/6/4.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

extension UserDefaults {
    subscript<T>(key: String) -> T? {
        get { return value(forKey: key) as? T }
        set { setValue(newValue, forKey: key) }
    }
}

extension UserDefaults {
    subscript<T: RawRepresentable>(key: String) -> T? {
        get {
            guard let rawValue = value(forKey: key) as? T.RawValue else { return nil }
            return T(rawValue: rawValue)
        }
        set { setValue(newValue, forKey: key) }
    }
}
