//
//  EnumMap.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/8/27.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import Foundation

struct EnumMap<Enum: CaseIterable & Hashable, Value> {
    private let values: [Enum: Value]

    init(resolver: (Enum) -> Value) {
        var values = [Enum: Value]()

        for key in Enum.allCases {
            values[key] = resolver(key)
        }

        self.values = values
    }

    subscript(key: Enum) -> Value {
        // Here we have to force-unwrap, since there's no way
        // of telling the compiler that a value will always exist
        // for any given key. However, since it's kept private
        // it should be fine - and we can always add tests to
        // make sure things stay safe.
        return values[key]!
    }
}
