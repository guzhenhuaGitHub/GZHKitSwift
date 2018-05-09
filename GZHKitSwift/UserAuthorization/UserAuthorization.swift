//
//  UserAuthorization.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/4/18.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit

/// 用户授权
struct UserAuthorization {
    static let settingUrl = URL(string: UIApplicationOpenSettingsURLString)!
    private init() {}
}

extension UserAuthorization {
    /// 打开应用系统设置页面
    static func userAuthorization() {
        guard UIApplication.shared.canOpenURL(settingUrl) else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(settingUrl, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(settingUrl)
        }
    }
}
