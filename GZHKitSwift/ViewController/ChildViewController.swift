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
        addChild(viewController)
        containerView.addSubview(viewController.view)
        viewController.view.frame.size = containerView.frame.size
        viewController.didMove(toParent: self)
    }

    func removeComponented() {
        guard parent != nil else {
            return
        }
        willMove(toParent: nil)
        removeFromParent()
        view.removeFromSuperview()
    }
}
