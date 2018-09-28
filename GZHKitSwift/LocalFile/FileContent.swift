//
//  FileContent.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/3/19.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import Foundation

extension String {
    /// 在本地查找这个字符串作为文件名的文件的路径
    var path: String {
        guard
            let path = Bundle.main.path(forResource: self, ofType: nil)
            else {
            fatalError("no such file")
        }
        return path
    }
    /// 在本地查找这个字符串作为文件名的文件的内容
    var fileContent: Data {
        let url = URL(fileURLWithPath: path)
        return (try? Data(contentsOf: url)) ?? Data()
    }
}
