//
//  StoryboardExtension.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIStoryboard

public extension GZHKit where Base: UIStoryboard {
    static func viewController(_ identifier: String, in storyboardName: String) -> UIViewController {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }

    static func viewControllerInMainStoryboard(with identifier: String) -> UIViewController {
        return Base.gzh.viewController(identifier, in: "main")
    }

    static func initialViewController(in storyboardName: String) -> UIViewController? {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()
    }
}
