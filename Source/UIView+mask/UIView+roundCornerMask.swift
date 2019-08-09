//
//  UIView+roundCornerMask.swift
//  DajiaZhongyi
//
//  Created by 顾振华 on 2019/7/30.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

extension UIBezierPath {
    convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadius: CGFloat) {
        self.init(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
    }
}

extension UIView {

    /// 为视图添加圆角
    func addRoundingCornerMask(byCorners corners: UIRectCorner = .allCorners, cornerRadius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadius: cornerRadius)
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        layer.mask = maskLayer
    }
}
