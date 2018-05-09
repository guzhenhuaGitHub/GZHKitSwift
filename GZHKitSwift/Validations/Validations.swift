//
//  Validations.swift
//  RealtyNavi-Swift
//
//  Created by 顾振华 on 2017/11/28.
//  Copyright © 2017年 Lansi. All rights reserved.
//

import Foundation

extension String {

    /// 判断是否为手机号
    var isMobile: Bool {

        let compacted = self.replacingOccurrences(of: " ", with: "")
        if compacted.count != 11 { return false }

        /**
         * 2018最新验证手机号正则表达式
         * 移动号段: 134,135,136,137,138,139,147,150,151,152,157,158,159,170,178,182,183,184,187,188
         * 联通号段: 130,131,132,145,155,156,170,171,175,176,185,186
         * 电信号段: 133,149,153,170,173,177,180,181,189
         */
        let mobileRegex = "^((13[0-9])|(14[5,7,9])|(15[^4])|(18[0-9])|(17[0,1,3,5,6,7,8]))\\d{8}$"

        return compacted =~ mobileRegex
    }

    /// 判断是否为邮箱地址
    var isEmail: Bool {
        return self =~ "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    }

    /// 判断是否为身份证号码
    var isIDCardNumber: Bool {
        // 修剪字符串前后空格和空行
        let trimmed = self.trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.count != 18 { return false }
        // 身份证号正则表达式
        let mmdd = "(((0[13578]|1[02])(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)(0[1-9]|[12][0-9]|30))|(02(0[1-9]|[1][0-9]|2[0-8])))"
        let LEAPmmdd = "0229"
        let yyyy = "(19|20)[0-9]{2}"
        let LEAPyyyy = "(19|20)(0[48]|[2468][048]|[13579][26])"
        let yearmmdd = yyyy + mmdd
        let LEAPyearmmdd = LEAPyyyy + LEAPmmdd
        let yyyymmdd = "((\(yearmmdd))|(\(LEAPyearmmdd))|(20000229))"
        let area = "(1[1-5]|2[1-3]|3[1-7]|4[1-6]|5[0-4]|6[1-5]|82|[7-9]1)[0-9]{4}"
        let regex = area + yyyymmdd + "[0-9]{3}[0-9Xx]"
        // 正则校验
        guard trimmed =~ regex else {
            return false
        }
        // 校验位校验
        let weight = "7 9 10 5 8 4 2 1 6 3 7 9 10 5 8 4 2".split(separator: " ").map { str in Int(str)! }
        let validate = "1 0 X 9 8 7 6 5 4 3 2".split(separator: " ")

        var weightVal = 0
        for (index, character) in trimmed.dropLast().enumerated() {
            weightVal += Int("\(character)")! * weight[index]
        }

        let mod = weightVal % 11
        return validate[mod] == String(trimmed.last!).uppercased()
    }
}
