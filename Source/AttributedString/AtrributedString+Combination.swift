//
//  NSAtrributedString+plus.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/28.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension NSAttributedString {

    static func + (lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {

        let lhs = NSMutableAttributedString(attributedString: lhs)
        lhs.append(rhs)
        return lhs

    }

    static func + (lhs: String, rhs: NSAttributedString) -> NSAttributedString {

        return lhs.attributed() + rhs

    }

    static func + (lhs: NSAttributedString, rhs: String) -> NSAttributedString {

        return lhs + rhs.attributed()

    }

    static func += (lhs: inout NSAttributedString, rhs: NSAttributedString) {

        lhs = lhs + rhs

    }

    static func += (lhs: inout NSAttributedString, rhs: String) {

        lhs = lhs + rhs

    }

}
