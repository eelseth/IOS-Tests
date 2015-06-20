//
//  TextField.swift
//  SwiftApp
//
//  Created by Lancer Lancer on 6/17/15.
//  Copyright © 2015 Lancer Lancer. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    
    
    func defaultStyle() {
        let placeholderStyle = NSAttributedString(string: self.placeholder ?? "", attributes: [NSForegroundColorAttributeName:UIColor.whiteColor()])
        self.attributedPlaceholder = placeholderStyle
        self.layer.cornerRadius = 5.0
        self.leftViewMode = UITextFieldViewMode.Always
        let image = UIImageView(image: UIImage(named: "account_icon"))
        image.frame = CGRectMake(0, 0, 5+25, 20)
        image.contentMode = UIViewContentMode.ScaleAspectFit
        self.leftView = image
    }
        
    func error(message: String) {
        /*let errorLayer :CALayer = CALayer()
        errorLayer.borderColor = UIColor.orangeColor().CGColor
        errorLayer.borderWidth = 2.0
        errorLayer.cornerRadius = 5.0
        //errorLayer.frame = self.frame
        errorLayer.frame = CGRectMake(0, 0, self.frame.width, self.frame.height)
        //errorLayer.backgroundColor = UIColor.redColor().CGColor
        self.layer.addSublayer(errorLayer)
        self.layer.masksToBounds = true*/
        
        /*Background
        self.backgroundColor = UIColor(netHex:0xE35F3B).colorWithAlphaComponent(0.2)*/
        
        self.layer.borderColor = UIColor(netHex:0xE35F3B).CGColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 5.0
    }
    
    func clearLayers(){
        //self.backgroundColor = UIColor.bgColor()
        self.layer.borderColor = UIColor.clearColor().CGColor
    }
    
            
}