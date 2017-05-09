//
//  ApplicationExtension.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIApplication

public extension GZHKit where Base: UIApplication
{
    public static var keyWindow: UIWindow? { return Base.shared.keyWindow }
    public static var topWindow: UIWindow? { return Base.shared.windows.last }
}
