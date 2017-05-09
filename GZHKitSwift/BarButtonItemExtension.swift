//
//  BarButtonItemExtension.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIBarButtonItem

//public extension GZHKit where Base: UIBarButtonItem
public extension UIBarButtonItem
{
    // MARK: 图片型BarButton
    public convenience init(image: String, highlightedImage: String, target:Any?, action:Selector) {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: image) , for: .normal)
        button.setImage(UIImage(named: highlightedImage), for: .highlighted)
        button.addTarget(target, action: action, for: .touchUpInside)
        button.sizeToFit()
        self.init(customView: button)
    }
}
