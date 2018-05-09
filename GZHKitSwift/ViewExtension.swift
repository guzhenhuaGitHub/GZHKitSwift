//
//  GZHKitFrame.swift
//  GZHKitSwiftDemo
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIView

public extension GZHKit where Base: UIView {
    public var origin: CGPoint { get { return base.frame.origin } set { base.frame.origin = newValue} }
    public var size: CGSize { get { return self.base.frame.size } set { self.base.frame.size = newValue} }
}

public extension GZHKit where Base: UIView {
    public var xVal: CGFloat { get { return origin.x} set { origin.x = newValue} }
    public var yVal: CGFloat { get { return origin.y} set { origin.y = newValue} }
    public var width: CGFloat { get { return size.width} set { size.width = newValue} }
    public var height: CGFloat { get { return size.height } set { size.height = newValue } }
}

public extension GZHKit where Base: UIView {
    public var top: CGFloat { get { return origin.y } set { origin.y = newValue } }
    public var left: CGFloat { get { return origin.x } set { origin.x = newValue } }
    public var right: CGFloat { get { return origin.x + size.width } set { origin.x = newValue - size.width } }
    public var bottom: CGFloat { get { return origin.y + size.height } set { origin.y = newValue - size.height } }
}

public extension GZHKit where Base: UIView {
    // MARK: 内中心和外中心
    public var centerInside: CGPoint { return CGPoint(x: size.width / 2, y: size.height / 2) }
    public var centerOutside: CGPoint { get { return base.center } set { base.center = newValue} }
}

public extension GZHKit where Base: UIView {
    // MARK: 圆和半径
    public var radius: CGFloat {
        get { return min(width, height) / 2 }
        set { width = newValue * 2; height = newValue * 2; circular() }
    }
    public func circular() { base.layer.cornerRadius = radius; base.layer.masksToBounds = true }
}

public extension GZHKit where Base: UIView {
    public static func viewFromXib() -> UIView? {
        return Bundle.main.loadNibNamed("\(Base.self)", owner: nil, options: nil)?.first as? UIView
    }
}
