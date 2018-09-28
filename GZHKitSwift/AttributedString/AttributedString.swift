//
//  AttributedString.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/4/2.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit

// MARK: - 富文本
extension String {
    func attributed(color: UIColor? = nil, fontSize: CGFloat? = nil, isBold: Bool = false) -> NSAttributedString {
        var attributes: [NSAttributedString.Key: Any] = [:]
        if let color = color {
            attributes[.foregroundColor] = color
        }
        if let fontSize = fontSize {
            attributes[.font] = isBold
                ? UIFont.boldSystemFont(ofSize: fontSize)
                : UIFont.boldSystemFont(ofSize: fontSize)
        }
        return NSAttributedString(string: self, attributes: attributes)
    }
}

extension NSAttributedString {
    static func + (lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {
        let mutableLhs = NSMutableAttributedString(attributedString: lhs)
        mutableLhs.append(rhs)
        return mutableLhs
    }
    static func += (lhs: inout NSAttributedString, rhs: NSAttributedString) {
        lhs = lhs + rhs
    }
}
