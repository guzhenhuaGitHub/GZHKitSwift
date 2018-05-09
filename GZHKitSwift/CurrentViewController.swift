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

public extension GZHKit where Base: UIViewController {
    public static var current: UIViewController? { return UIApplication.gzh.keyWindow?.rootViewController?.gzh.current }
    public var current: UIViewController? { return base.presentedViewController ?? base }
}

public extension GZHKit where Base: UINavigationController {
    public var current: UIViewController? { return base.visibleViewController?.gzh.current }
}

public extension GZHKit where Base: UITabBarController {
    public var current: UIViewController? { return base.selectedViewController?.gzh.current }
}
