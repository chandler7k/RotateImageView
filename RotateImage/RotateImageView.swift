//
//  ImageView.swift
//  RotateImage
//
//  Created by ChandlerZou on 2018/7/26.
//  Copyright © 2018年 zouhuanlin. All rights reserved.
//

import UIKit
@IBDesignable class RotateImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func initialize(){
        self.layer.masksToBounds = true
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
        self.layer.contents = image
        initialize()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        self.frame = frame
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    @IBInspectable override var image: UIImage?{
        didSet{
            self.layer.contents = image
        }
    }
    
    @IBInspectable var radius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = radius
        }
    }
    
    
    private let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
    
//    @IBInspectable var duration: Double = 10 {
//        didSet{
//            rotationAnimation.duration = duration
//        }
//    }
//
    func startRotating(duration:Double , fromValue:Double, toValue: Double, repeatCount: Float = MAXFLOAT){
        rotationAnimation.fromValue = 0.0
        rotationAnimation.toValue = Double.pi * 2
        rotationAnimation.duration = duration
        
        rotationAnimation.repeatCount = repeatCount
        
        self.layer.add(rotationAnimation, forKey: nil)
    }
    
}
