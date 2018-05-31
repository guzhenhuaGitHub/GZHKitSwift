//
//  ReusableCell.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UITableViewCell
import UIKit.UICollectionViewCell

// Preferred: [Reusable](git@github.com:AliSoftware/Reusable.git)

public protocol ReusableCellProtocol {
    static var reuseIdentifier: String { get }
    static var nib: UINib { get }
}

public extension ReusableCellProtocol {
    public static var reuseIdentifier: String { return "\(Self.self)" }
    public static var nib: UINib { return UINib(nibName: "\(Self.self)", bundle: nil) }
}

public extension ReusableCellProtocol where Self: UITableViewCell {
    public static func xibCell(reuseFrom tableView: UITableView) -> Self? {
        var xibCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? Self
        if xibCell == nil {
            tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
            xibCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? Self
        }
        return xibCell
    }
}

extension UITableViewCell: ReusableCellProtocol {}
extension UICollectionViewCell: ReusableCellProtocol {}
