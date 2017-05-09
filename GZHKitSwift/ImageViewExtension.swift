//
//  ImageViewExtension.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/9.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIImageView
import SDWebImage

public extension GZHKit where Base: UIImageView
{
    public func setImage(url: String, placeholder image: String) -> Void {
        (base as UIImageView).sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: image), options: .retryFailed) {
            [weak base] (image, error, cacheType, imageUrl) in
            guard let image = image else { return }
            base?.image = image
        }
    }
}
