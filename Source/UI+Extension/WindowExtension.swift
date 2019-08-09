//
//  ApplicationExtension.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit

public extension UIWindow {
    static var key: UIWindow? {
        return UIApplication.shared.keyWindow
    }
    static var top: UIWindow? {
        return UIApplication.shared.windows.last
    }
}
