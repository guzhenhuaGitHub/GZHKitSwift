//
//  PopGestureConflictProtocol.swift
//  appstore
//
//  Created by 顾振华 on 2019/6/3.
//  Copyright © 2019 dajiazhongyi. All rights reserved.
//

/// 解决视图右滑与系统右滑返回上级页面手势冲突
protocol PopGestureConflictProtocol {
}

extension UIViewController: PopGestureConflictProtocol {}
extension PopGestureConflictProtocol where Self: UIViewController {

    /// 处理scrollView和系统右滑返回手势的冲突
    func handlePopGestureConflict(with conflictedView: UIScrollView) {
        // 将右滑返回上级页面的手势设置为优先级高于conflictedView
        navigationController?
            .view
            .gestureRecognizers?
            .forEach { gesture in
                guard gesture is UIScreenEdgePanGestureRecognizer else { return }
                conflictedView.panGestureRecognizer.require(toFail: gesture)
            }
    }
}
