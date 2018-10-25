//
//  CurrentViewController.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIViewController
import UIKit.UINavigationController
import UIKit.UITabBarController
import UIKit.UIApplication

public extension UIViewController {
    static var current: UIViewController? {
        return UIApplication.shared.keyWindow?.rootViewController?.current
    }
}

private extension UIViewController {
    var current: UIViewController? {
        switch self {
        case let nav as UINavigationController:
            return nav.visibleViewController?.current

        case let tab as UITabBarController:
            return tab.selectedViewController?.current

        default:
            return presentedViewController ?? self
        }
    }
}
