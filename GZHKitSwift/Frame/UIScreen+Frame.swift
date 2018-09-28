//
//  UIScreen+Frame.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIScreen

public extension UIScreen {
    public static var size: CGSize {
        return main.bounds.size
    }
    public static var width: CGFloat {
        return size.width
    }
    public static var height: CGFloat {
        return size.height
    }
}
