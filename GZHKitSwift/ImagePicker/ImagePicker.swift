//
//  ImagePicker.swift
//  RealtyNavi-Swift
//
//  Created by 顾振华 on 2018/1/23.
//  Copyright © 2018年 Lansi. All rights reserved.
//

import UIKit

public extension UIImagePickerController {

    public static var camera: UIImagePickerController? { return picker(with: .camera) }
    public static var photoLibrary: UIImagePickerController? { return picker(with: .photoLibrary) }
    public static var savedPhotosAlbum: UIImagePickerController? { return picker(with: .savedPhotosAlbum) }

}

// MARK: private
extension UIImagePickerController {

    private class func picker(with sourceType: UIImagePickerControllerSourceType) -> UIImagePickerController? {

        var picker: UIImagePickerController?

        if isSourceTypeAvailable(sourceType) {
            picker = UIImagePickerController()
            picker?.sourceType = sourceType
            picker?.allowsEditing = true
        }

        return picker
    }
}
