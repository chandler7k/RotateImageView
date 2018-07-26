//
//  ViewController.swift
//  RotateImage
//
//  Created by ChandlerZou on 2018/7/26.
//  Copyright © 2018年 zouhuanlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var rotatedImageFrame = CGRect(x: 30, y: 160, width: 200, height: 200)
        var rotatedImageView = RotateImageView(image: UIImage(named: "air"))
//        rotatedImageView.image = UIImage(named: "jasd")
        
        rotatedImageView.frame = rotatedImageFrame
        rotatedImageView.radius =  rotatedImageView.frame.height / 2
        

        self.view.addSubview(rotatedImageView)
        rotatedImageView.startRotating(duration: 20, fromValue: 0, toValue: Double.pi * 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

