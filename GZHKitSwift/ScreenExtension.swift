//
//  ScreenExtension.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIScreen

public extension GZHKit where Base: UIScreen
{
    public static var width: CGFloat { return Base.main.bounds.size.width }
    public static var height: CGFloat { return Base.main.bounds.size.height }
}
