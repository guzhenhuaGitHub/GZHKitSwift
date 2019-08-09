//
//  NotificationName+StringLiteral.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/5/6.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

extension Notification.Name: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
}
