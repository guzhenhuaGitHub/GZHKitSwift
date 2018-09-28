//
//  ViewController.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let sliderBar = UISlider()
        sliderBar.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        sliderBar.setThumbImage(#imageLiteral(resourceName: "slider"), for: .normal)
        view.addSubview(sliderBar)

    }
}
