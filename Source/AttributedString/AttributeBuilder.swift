//
//  AttributeBuilder.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/6/28.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

public class AttributeBuilder {

    subscript(attributeTypes: [AttributeType]) -> [NSAttributedString.Key: Any] {

        return attributeTypes.reduce(into: [:]) { result, attributedType in
            result[attributedType.key] = attributedType.value
        }

    }

}
