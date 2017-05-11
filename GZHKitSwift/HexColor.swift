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
    ///16进制转颜色
    public convenience init(hex: String) {
        // 处理16进制字符串
        var (isHex, length, hex) = UIColor.handle(hex: hex)
        // 非16进制将返回clear色
        if isHex == false { length = 0 }
        
        switch length {
        case 3:     self.init(hex3: hex)
        case 4:     self.init(hex4: hex)
        case 6:     self.init(hex6: hex)
        case 8:     self.init(hex8: hex)
        default:    self.init(cgColor: UIColor.clear.cgColor)
        }
    }
    ///3位16进制转颜色
    fileprivate convenience init(hex3: UInt) {
        self.init(hex4: hex3 << 4 | 0xF)
    }
    ///4位16进制转颜色
    fileprivate convenience init(hex4: UInt) {
        let r = CGFloat((hex4 & 0xF000) >> 12) / 0xF
        let g = CGFloat((hex4 & 0x0F00) >> 8)  / 0xF
        let b = CGFloat((hex4 & 0x00F0) >> 4)  / 0xF
        let a = CGFloat((hex4 & 0x000F) >> 0)  / 0xF
        self.init(red: r, green: g, blue: b, alpha: a)
    }
    ///6位16进制转颜色
    fileprivate convenience init(hex6: UInt) {
        self.init(hex8: hex6 << 8 | 0xFF)
    }
    ///8位16进制转颜色
    fileprivate convenience init(hex8: UInt) {
        let r = CGFloat((hex8 & 0xFF000000) >> 24) / 0xFF
        let g = CGFloat((hex8 & 0x00FF0000) >> 16) / 0xFF
        let b = CGFloat((hex8 & 0x0000FF00) >> 8)  / 0xFF
        let a = CGFloat((hex8 & 0x000000FF) >> 0)  / 0xFF
        self.init(red: r, green: g, blue: b, alpha: a)
    }
    ///处理16进制颜色码
    fileprivate class func handle(hex: String) -> (isHex: Bool, length: Int, value: UInt)
    {
        var hex = hex
        // 处理'#'开头字符串
        if hex.hasPrefix("#") { hex.remove(at: hex.startIndex) }
        // 这个是16进制颜色码的值
        var hexToUInt:CUnsignedInt = 0
        // 返回(是否为16进制码, 16进制码长度, 16进制码的值)
        return (Scanner(string: hex).scanHexInt32(&hexToUInt),
                hex.characters.count,
                UInt(hexToUInt))
    }
}
