//
//  ReusableCell.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UITableViewCell
import UIKit.UICollectionViewCell

public extension GZHKit where Base: UITableViewCell
{
    public static var reuseIdentifier: String { return "\(Base.self)" }
    public static var nib:UINib { return UINib(nibName: "\(Base.self)", bundle: nil) }
    public static func xibCell(reuseFrom tableView: UITableView) -> Base? {
        var xibCell:Base? = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! Base?
        if xibCell == nil {
            tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
            xibCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! Base?
        }
        return xibCell
    }
}

public extension GZHKit where Base: UICollectionViewCell
{
    public static var reuseIdentifier: String { return "\(Base.self)" }
    public static var nib:UINib { return UINib(nibName: "\(Base.self)", bundle: nil) }
}
