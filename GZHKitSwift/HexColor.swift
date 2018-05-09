//
//  HexColor.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIColor

//public extension GZHKit where Base: UIColor
public extension UIColor {
    /// color with hex string
    ///
    /// - Parameter hexadecimal: hexadecimal code of color
    public convenience init(hexadecimal: String) {
        // 删除头尾的多余字符
        let formatted = hexadecimal
            .replacingOccurrences(of: "[^0-9a-fA-F]*$", with: "", options: .regularExpression)
            .replacingOccurrences(of: ".*?(?=[0-9a-fA-F]*$)", with: "", options: .regularExpression)

        switch formatted.count {
        case 3:     self.init(hex3: formatted)
        case 4:     self.init(hex4: formatted)
        case 6:     self.init(hex6: formatted)
        case 8:     self.init(hex8: formatted)
        default:    fatalError("'\(hexadecimal)' is not a hex string")
        }
    }
    // hex3: 3位16进制颜色码 (rgb)
    private convenience init(hex3: String) {
        self.init(hex4: "F" + hex3)
    }
    // hex4: 4位16进制颜色码 (rgba)
    private convenience init(hex4: String) {
        let hex = hex4.hex
        var alpha = (hex & 0xF000) >> 12
        var red   = (hex & 0x0F00) >> 8
        var green = (hex & 0x00F0) >> 4
        var blue  = (hex & 0x000F) >> 0
        red   = (red   << 4) + red
        green = (green << 4) + green
        blue  = (blue  << 4) + blue
        alpha = (alpha << 4) + alpha
        self.init(red: CGFloat(red)/255.0,
                  green: CGFloat(green)/255.0,
                  blue: CGFloat(blue)/255.0,
                  alpha: CGFloat(alpha)/255.0)
    }
    // hex6: 6位16进制颜色码 (rrggbb)
    private convenience init(hex6: String) {
        self.init(hex8: "FF" + hex6)
    }
    // hex8: 8位16进制颜色码 (rrggbbaa)
    private convenience init(hex8: String) {
        let hex = hex8.hex
        let alpha = (hex & 0xFF000000) >> 24
        let red   = (hex & 0x00FF0000) >> 16
        let green = (hex & 0x0000FF00) >> 8
        let blue  = (hex & 0x000000FF) >> 0
        self.init(red: CGFloat(red)/255.0,
                  green: CGFloat(green)/255.0,
                  blue: CGFloat(blue)/255.0,
                  alpha: CGFloat(alpha)/255.0)
    }
}

extension String {
    /// 16进制字符串转换成数字
    fileprivate var hex: UInt32 {
        var result: UInt32 = 0
        guard Scanner(string: self).scanHexInt32(&result) else {
            fatalError("'\(self)' is not a hex string")
        }
        return result
    }
}
