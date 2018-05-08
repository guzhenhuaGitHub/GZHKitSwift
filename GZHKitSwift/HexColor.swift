//
//  HexColor.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIColor

//public extension GZHKit where Base: UIColor
public extension UIColor
{
    // hex: 16进制颜色码
    public convenience init(hex: UInt) {
        let length = String(format: "%x", hex).count
        switch length {
        case 3:     self.init(hex3: hex)
        case 4:     self.init(hex4: hex)
        case 6:     self.init(hex6: hex)
        case 8:     self.init(hex8: hex)
        default:    self.init()
        }
    }
    // hex3: 3位16进制颜色码
    private convenience init(hex3: UInt) {
        self.init(hex4: hex3 << 4 | 0xF)
    }
    // hex4: 4位16进制颜色码
    private convenience init(hex4: UInt) {
        let r = (hex4 & 0xF000) >> 12
        let g = (hex4 & 0x0F00) >> 8
        let b = (hex4 & 0x00F0) >> 4
        let a = (hex4 & 0x000F) >> 0
        self.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
    }
    // hex6: 6位16进制颜色码
    private convenience init(hex6: UInt) {
        self.init(hex8: hex6 << 8 | 0xFF)
    }
    // hex8: 8位16进制颜色码
    private convenience init(hex8: UInt) {
        let r = (hex8 & 0xFF000000) >> 24
        let g = (hex8 & 0x00FF0000) >> 16
        let b = (hex8 & 0x0000FF00) >> 8
        let a = (hex8 & 0x000000FF) >> 0
        self.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
    }
}
