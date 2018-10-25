//
//  ChildViewController.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/8/21.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit

extension UIViewController {
    func addComponentViewController(_ viewController: UIViewController) {
        addComponentViewController(viewController, at: view)
    }

    func addComponentViewController(_ viewController: UIViewController, at containerView: UIView) {
        #if swift(>=4.2)
        addChild(viewController)
        #else
        addChildViewController(viewController)
        #endif
        containerView.addSubview(viewController.view)
        viewController.view.frame.size = containerView.frame.size
        #if swift(>=4.2)
        viewController.didMove(toParent: self)
        #else
        viewController.didMove(toParentViewController: self)
        #endif
    }

    func removeComponented() {
        guard parent != nil else {
            return
        }
        #if swift(>=4.2)
        willMove(toParent: nil)
        removeFromParent()
        #else
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        #endif
        view.removeFromSuperview()
    }
}
