//
//  CustomView.swift
//  CreatingDesignableUserInterfaces
//
//  Created by Mohamed Kelany on 6/20/18.
//  Copyright © 2018 Mohamed Kelany. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer:CAGradientLayer {
        return layer as! CAGradientLayer
    }

    override func draw(_ rect: CGRect, for formatter: UIViewPrintFormatter) {
        self.layer.masksToBounds = true
        self.layer.borderWidth = 10.0
        self.layer.borderColor = UIColor.init(red: 0.0, green: 64/255, blue: 128/255, alpha: 1.0).cgColor
        self.layer.cornerRadius = 20.0
        
        let startColor = UIColor(red: 102/255, green: 204/255, blue: 1.0, alpha: 1.0).cgColor
        let endColor = UIColor(red: 0.0, green: 128/255, blue: 1.0, alpha: 1.0).cgColor
        
        gradientLayer.colors = [startColor, endColor]
        
    }

}
