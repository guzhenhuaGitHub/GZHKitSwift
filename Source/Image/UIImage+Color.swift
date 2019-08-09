//
//  ImageExtension.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIImage

//public extension GZHKit where Base: UIImage
public extension UIImage {

    var original: UIImage {
        return withRenderingMode(.alwaysOriginal)
    }

    convenience init(color: UIColor) {
        // 创建1个1x1的图片上下文
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        // 开启图片上下文
        UIGraphicsBeginImageContext(rect.size)
        // 延迟关闭图片上下文
        defer {
            UIGraphicsEndImageContext()
        }
        // 获取图片上下文
        guard let context = UIGraphicsGetCurrentContext() else {
            // 获取图片上下文失败
            self.init()
            return
        }
        // 设置上下文填充颜色
        context.setFillColor(color.cgColor)
        // 在图片上下文中填充目标色
        context.fill(rect)
        // 取得渲染图片
        guard let theImage = UIGraphicsGetImageFromCurrentImageContext() else {
            // 取得渲染图片失败
            self.init()
            return
        }
        // 获取图片的CG图
        guard let cgImage = theImage.cgImage else {
            // 获取图片的CG图失败
            self.init()
            return
        }
        // 最终生成图片
        self.init(cgImage: cgImage)
    }
}
