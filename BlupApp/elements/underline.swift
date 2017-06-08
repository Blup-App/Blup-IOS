//
//  Blup_ItemFocus.swift
//  Blup
//
//  Created by Suong Kevin Tan on 07/06/2017.
//  Copyright © 2017 HETIC. All rights reserved.
//
//  Generated by PaintCode Plugin for Sketch
//  http://www.paintcodeapp.com/sketch
//

import UIKit



class Underline: NSObject {
    
    
    //MARK: - Canvas Drawings
    
    /// Page 1
    
    class func drawLine() {
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        /// Rectangle 3
        let rectangle3 = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 112, height: 6), cornerRadius: 8)
        context.saveGState()
        context.translateBy(x: 40, y: 0)
        UIColor(hue: 0.131, saturation: 0.71, brightness: 1, alpha: 1).setFill()
        rectangle3.fill()
        context.restoreGState()
    }
    
    
}