//
//  AttributedStringConvertable.swift
//  DajiaZhongyi
//
//  Created by 顾振华 on 2019/7/30.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

protocol AttributedStringConvertable {
    var attributedString: NSAttributedString { get }
}

extension String: AttributedStringConvertable {
    var attributedString: NSAttributedString {
        return NSAttributedString(string: self)
    }
}

extension NSAttributedString: AttributedStringConvertable {
    var attributedString: NSAttributedString {
        return self
    }
}
