//
//  MakeAnimatedDefaultToTrue.swift
//  RealtyNavi
//
//  Created by 顾振华 on 2018/7/20.
//  Copyright © 2018年 LanSi. All rights reserved.
//

import UIKit

extension UINavigationController {
    func pushViewController(_ viewController: UIViewController) {
        pushViewController(viewController, animated: true)
    }

    @discardableResult
    func popViewController() -> UIViewController? {
        return popViewController(animated: true)
    }

    @discardableResult
    func popToViewController(_ viewController: UIViewController) -> [UIViewController]? {
        return popToViewController(viewController, animated: true)
    }

    @discardableResult
    func popToRootViewController() -> [UIViewController]? {
        return popToRootViewController(animated: true)
    }
}

extension UIViewController {
    func present(_ viewControllerToPresent: UIViewController, completion: (() -> Swift.Void)? = nil) {
        present(viewControllerToPresent, animated: true, completion: completion)
    }

    func dismiss(completion: (() -> Swift.Void)? = nil) {
        dismiss(animated: true, completion: completion)
    }
}

extension UITableView {
    func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition) {
        scrollToRow(at: indexPath, at: scrollPosition, animated: true)
    }
    func deselectRow(at indexPath: IndexPath) {
        deselectRow(at: indexPath, animated: true)
    }
}

extension UICollectionView {
    func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition) {
        scrollToItem(at: indexPath, at: scrollPosition, animated: true)
    }
    func deselectItem(at indexPath: IndexPath) {
        deselectItem(at: indexPath, animated: true)
    }
}

extension UINavigationItem {
    func setLeftBarButton(_ item: UIBarButtonItem?) {
        setLeftBarButton(item, animated: true)
    }

    func setRightBarButton(_ item: UIBarButtonItem?) {
        setRightBarButton(item, animated: true)
    }
}

extension UISlider {
    func setValue(_ value: Float) {
        setValue(value, animated: true)
    }
}

extension UISwitch {
    func setOn(_ on: Bool) {
        setOn(on, animated: true)
    }
}

extension UIProgressView {
    func setProgress(_ progress: Float) {
        setProgress(progress, animated: true)
    }
}

extension UIPickerView {
    func selectRow(_ row: Int, inComponent component: Int) {
        selectRow(row, inComponent: component, animated: true)
    }
}
