//
//  ImagePickerControllerExtension.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit.UIImagePickerController

public extension GZHKit where Base: UIImagePickerController {
    public static var camera: UIImagePickerController? {
        var picker: UIImagePickerController?
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            picker = UIImagePickerController()
            picker?.sourceType = .camera
            picker?.allowsEditing = true
        }
        return picker
    }

    public static var photoLibrary: UIImagePickerController? {
        var picker: UIImagePickerController?
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            picker = UIImagePickerController()
            picker?.sourceType = .photoLibrary
            picker?.allowsEditing = true
        }
        return picker
    }

    public static var savedPhotosAlbum: UIImagePickerController? {
        var picker: UIImagePickerController?
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            picker = UIImagePickerController()
            picker?.sourceType = .savedPhotosAlbum
            picker?.allowsEditing = true
        }
        return picker
    }
}
