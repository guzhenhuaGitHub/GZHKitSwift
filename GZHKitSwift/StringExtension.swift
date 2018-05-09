//
//  StringExtension.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/9.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import Foundation.NSFileManager

//public extension GZHKit where Base: String
public extension String {
    // 路径文件的大小
    public var fileSize: UInt64 {
        var size: UInt64 = 0
        // 文件管理者
        let mgr = FileManager.default
        // 是否为文件夹
        var isDirectory = ObjCBool(false)
        // 路径是否存在
        let exists = mgr.fileExists(atPath: self, isDirectory: &isDirectory)
        // 不存在 中断处理
        if !exists { return size }
        // 存在 继续处理
        if isDirectory.boolValue {
            // 获得文件夹的大小  == 获得文件夹中所有文件的总大小
            guard let enumerator = mgr.enumerator(atPath: self) else { return size }
            for subpath in enumerator {
                // 全路径
                if let subpath = subpath as? String {
                    let fullSubpath = appending(subpath)
                    // 累加文件大小
                    size += (try? mgr.attributesOfItem(atPath: fullSubpath)[.size]) as? UInt64 ?? 0
                }
            }
        } else { // 文件
            size = (try? mgr.attributesOfItem(atPath: self)[.size]) as? UInt64 ?? 0
        }

        return size
    }
}
