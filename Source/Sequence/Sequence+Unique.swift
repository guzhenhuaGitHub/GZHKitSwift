//
//  Sequence+Unique.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/5/22.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public extension Sequence where Iterator.Element: Hashable {
    var unique: [Iterator.Element] {
        var seen: [Iterator.Element: Bool] = [:]
        return filter { seen.updateValue(true, forKey: $0) == nil }
    }
}
