//
//  SerializingJsonFile.swift
//  RealtyNavi-Swift
//
//  Created by Eleven on 2018/1/11.
//  Copyright © 2018年 Lansi. All rights reserved.
//

import Foundation

extension Data {
    /// 解析成json
    var toJson: Any {
        var json: Any?
        do {
            json = try JSONSerialization
                .jsonObject(with: self, options: JSONSerialization.ReadingOptions.mutableContainers)
        } catch let error as NSError {
            fatalError("Error: \(error.localizedDescription)")
        }
        return json!
    }
}
