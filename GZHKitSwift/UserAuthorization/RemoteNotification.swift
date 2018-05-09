//
//  RemoteNotification.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/4/18.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit
import UserNotifications

// MARK: - 系统通知权限
extension UserAuthorization {
    /// 系统通知权限
    struct RemoteNotification {
        /// 切换通知权限注册状态
        static var isRegistered: Bool {
            get {
                return UIApplication.shared.isRegisteredForRemoteNotifications
            }
            set {
                newValue
                    ? UIApplication.shared.registerForRemoteNotifications()
                    : UIApplication.shared.unregisterForRemoteNotifications()
            }
        }
        /// 判断用户是否开放系统通知权限
        static func isEnabled(_ callback: @escaping (Bool) -> Void) {
            if #available(iOS 10.0, *) {
                UNUserNotificationCenter.current().getNotificationSettings { (settings) in
                    // 当前不在主线程，切换至主线程
                    DispatchQueue.main.async {
                        // 判断用户是否开启通知权限
                        callback(settings.authorizationStatus == .authorized)
                    }
                }
            } else {
                // 判断用户是否开启通知权限
                callback(UIApplication.shared.currentUserNotificationSettings?.types != .none)
            }
        }
    }
}
