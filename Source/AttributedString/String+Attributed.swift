//
//  String+Attributed.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/28.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension String {

    func attributed(_ attributedTypes: AttributeType...) -> NSAttributedString {

        let attributesOf = AttributeBuilder()
        let attributes = attributesOf[attributedTypes]

        return NSAttributedString(string: self, attributes: attributes)
    }
}
