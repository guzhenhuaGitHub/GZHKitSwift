//
//  NotificationToken.swift
//  DajiaSwiftUtils
//
//  Created by 顾振华 on 2019/5/17.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

import Foundation

/// 对通知中心的优化
/// 在析构时对观察者对象主动释放
open class NotificationToken {

    let notificationCenter: NotificationCenter
    var observers: [NSObjectProtocol] = []

    public init(_ notificationCenter: NotificationCenter = .default) {
        self.notificationCenter = notificationCenter
    }

    deinit { observers.forEach(notificationCenter.removeObserver) }

    /// 添加监听者
    public func addObserver(
        forName name: NSNotification.Name?,
        object obj: Any? = nil,
        queue: OperationQueue? = .main,
        using block: @escaping (Notification) -> Void
    ) {
        let observer = notificationCenter.addObserver(forName: name, object: obj, queue: queue, using: block)
        observers.append(observer)
    }

    /// 添加监听者
    ///
    /// - Parameter observer: NotificationCenter的addObserver(forName:object:queue:using:)方法的返回值
    public func addObserver(_ observer: NSObjectProtocol) {
        observers.append(observer)
    }
}
