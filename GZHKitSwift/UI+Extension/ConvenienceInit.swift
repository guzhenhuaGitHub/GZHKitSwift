//
//  ConvenienceInit.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/3/29.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit

extension UIView {
    convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }
}

extension UILabel {
    convenience init(text: String = "", textColor: UIColor, fontSize: CGFloat = 0, isBold: Bool = false) {
        self.init()
        self.set(text: text, textColor: textColor, fontSize: fontSize, isBold: isBold)
    }

    func set(text: String = "", textColor: UIColor, fontSize: CGFloat = 0, isBold: Bool = false) {
        self.text = text
        self.textColor = textColor
        if fontSize > 0 {
            self.font = isBold ? .boldSystemFont(ofSize: fontSize) : .systemFont(ofSize: fontSize)
        }
    }
}

extension UIStackView {
    convenience init(
        axis: UILayoutConstraintAxis,
        distribution: UIStackViewDistribution = .fill,
        alignment: UIStackViewAlignment = .fill,
        spacing: CGFloat = 0
    ) {
        self.init()
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = spacing
    }
}
