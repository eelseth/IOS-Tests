//
//  Colors.swift
//  SwiftApp
//
//  Created by Lancer Lancer on 6/8/15.
//  Copyright (c) 2015 Lancer Lancer. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    class func bgColor() -> UIColor {
        let bgColor = UIColor(netHex: 0x220000).colorWithAlphaComponent(0.2)
        return bgColor
    }
}