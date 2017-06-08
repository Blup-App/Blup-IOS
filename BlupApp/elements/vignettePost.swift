//
//  VignettePost.swift
//  Blup
//
//  Created by Suong Kevin Tan on 07/06/2017.
//  Copyright © 2017 HETIC. All rights reserved.
//
//  Generated by PaintCode Plugin for Sketch
//  http://www.paintcodeapp.com/sketch
//

import UIKit



class VignettePost: NSObject {
    
    //MARK: - Canvas Drawings
    
    /// Page 1
    
    class func drawVignette(title: String, date: String, author: String, image: UIImage, color: UIColor, frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 318, height: 125), resizing: ResizingBehavior = .aspectFit) {
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        let baseTransform = context.userSpaceToDeviceSpaceTransform.inverted()
        
        /// Resize to Target Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 318, height: 125), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 318, y: resizedFrame.height / 125)
        
        /// prêt
        do {
            context.saveGState()
            
            /// Rectangle
            let rectangle = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 318, height: 125), cornerRadius: 15)
            context.saveGState()
            UIColor.white.setFill()
            rectangle.fill()
            context.restoreGState()
            
            /// Rectangle
            let rectangle2 = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 90, height: 90), cornerRadius: 5)
            context.saveGState()
            context.translateBy(x: 24, y: 18)
            context.saveGState()
            context.beginPath()
            context.addPath(rectangle2.cgPath)
            context.addRect(rectangle2.bounds.insetBy(dx: -9, dy: -9))
            context.clip(using: .evenOdd)
            context.translateBy(x: -100, y: 0)
            do {
                let baseZero = context.convertToDeviceSpace(CGPoint.zero).applying(baseTransform)
                let baseOne = context.convertToDeviceSpace(CGPoint(x: 1, y: 1)).applying(baseTransform)
                let baseOffset = context.convertToDeviceSpace(CGPoint(x: 102, y: 2)).applying(baseTransform)
                let shadowOffset = CGSize(width: baseOffset.x - baseZero.x, height: baseOffset.y - baseZero.y)
                let shadowBlur: CGFloat = 7 * min(baseOne.x - baseZero.x, baseOne.y - baseZero.y)
                context.setShadow(offset: shadowOffset, blur: shadowBlur, color: UIColor(white: 0, alpha: 0.21).cgColor)
            }
            UIColor.black.setFill()
            rectangle2.fill()
            context.restoreGState()
            context.saveGState()
            // Warning: Image fill is not supported.
            context.restoreGState()
            context.restoreGState()
            
            /// On Planets — Cure
            let onPlanetsCure = NSMutableAttributedString(string: title)
            onPlanetsCure.addAttribute(NSFontAttributeName, value: UIFont(name: "Avenir-Heavy", size: 16)!, range: NSRange(location: 0, length: onPlanetsCure.length))
            context.saveGState()
            onPlanetsCure.draw(at: CGPoint(x: 134, y: 18))
            context.restoreGState()
            
            /// 09/06/17
            let _090617 = NSMutableAttributedString(string: date)
            _090617.addAttribute(NSFontAttributeName, value: UIFont(name: "Avenir-Book", size: 16)!, range: NSRange(location: 0, length: _090617.length))
            _090617.addAttribute(NSForegroundColorAttributeName, value: UIColor(hue: 0.791, saturation: 0, brightness: 0.29, alpha: 1), range: NSRange(location: 0, length: _090617.length))
            context.saveGState()
            _090617.draw(at: CGPoint(x: 157, y: 43))
            context.restoreGState()
            
            /// @gaindil
            let gaindil = NSMutableAttributedString(string: author)
            gaindil.addAttribute(NSFontAttributeName, value: UIFont(name: "Avenir-Black", size: 14)!, range: NSRange(location: 0, length: gaindil.length))
            gaindil.addAttribute(NSForegroundColorAttributeName, value: color, range: NSRange(location: 0, length: gaindil.length))
            context.saveGState()
            gaindil.draw(at: CGPoint(x: 134, y: 92))
            context.restoreGState()
            
            /// noun_766794_cc
            do {
                context.saveGState()
                context.translateBy(x: 134, y: 43)
                
                /// Group
                do {
                    context.saveGState()
                    
                    /// Shape
                    let shape = UIBezierPath()
                    shape.move(to: CGPoint(x: 14.96, y: 6.13))
                    shape.addLine(to: CGPoint(x: 15.93, y: 5.16))
                    shape.addCurve(to: CGPoint(x: 15.93, y: 4.07), controlPoint1: CGPoint(x: 16.23, y: 4.86), controlPoint2: CGPoint(x: 16.23, y: 4.37))
                    shape.addCurve(to: CGPoint(x: 14.84, y: 4.07), controlPoint1: CGPoint(x: 15.63, y: 3.77), controlPoint2: CGPoint(x: 15.14, y: 3.77))
                    shape.addLine(to: CGPoint(x: 13.87, y: 5.04))
                    shape.addCurve(to: CGPoint(x: 9.23, y: 3.11), controlPoint1: CGPoint(x: 12.59, y: 3.97), controlPoint2: CGPoint(x: 10.99, y: 3.27))
                    shape.addLine(to: CGPoint(x: 9.23, y: 1.54))
                    shape.addLine(to: CGPoint(x: 10, y: 1.54))
                    shape.addCurve(to: CGPoint(x: 10.77, y: 0.77), controlPoint1: CGPoint(x: 10.42, y: 1.54), controlPoint2: CGPoint(x: 10.77, y: 1.19))
                    shape.addCurve(to: CGPoint(x: 10, y: 0), controlPoint1: CGPoint(x: 10.77, y: 0.34), controlPoint2: CGPoint(x: 10.42, y: 0))
                    shape.addLine(to: CGPoint(x: 6.92, y: 0))
                    shape.addCurve(to: CGPoint(x: 6.15, y: 0.77), controlPoint1: CGPoint(x: 6.5, y: 0), controlPoint2: CGPoint(x: 6.15, y: 0.34))
                    shape.addCurve(to: CGPoint(x: 6.92, y: 1.54), controlPoint1: CGPoint(x: 6.15, y: 1.19), controlPoint2: CGPoint(x: 6.5, y: 1.54))
                    shape.addLine(to: CGPoint(x: 7.69, y: 1.54))
                    shape.addLine(to: CGPoint(x: 7.69, y: 3.11))
                    shape.addCurve(to: CGPoint(x: 3.05, y: 5.04), controlPoint1: CGPoint(x: 5.94, y: 3.27), controlPoint2: CGPoint(x: 4.33, y: 3.97))
                    shape.addLine(to: CGPoint(x: 2.08, y: 4.07))
                    shape.addCurve(to: CGPoint(x: 0.99, y: 4.07), controlPoint1: CGPoint(x: 1.78, y: 3.77), controlPoint2: CGPoint(x: 1.29, y: 3.77))
                    shape.addCurve(to: CGPoint(x: 0.99, y: 5.16), controlPoint1: CGPoint(x: 0.69, y: 4.37), controlPoint2: CGPoint(x: 0.69, y: 4.86))
                    shape.addLine(to: CGPoint(x: 1.96, y: 6.13))
                    shape.addCurve(to: CGPoint(x: 0, y: 11.54), controlPoint1: CGPoint(x: 0.74, y: 7.6), controlPoint2: CGPoint(x: 0, y: 9.48))
                    shape.addCurve(to: CGPoint(x: 8.46, y: 20), controlPoint1: CGPoint(x: 0, y: 16.2), controlPoint2: CGPoint(x: 3.8, y: 20))
                    shape.addCurve(to: CGPoint(x: 16.92, y: 11.54), controlPoint1: CGPoint(x: 13.13, y: 20), controlPoint2: CGPoint(x: 16.92, y: 16.2))
                    shape.addCurve(to: CGPoint(x: 14.96, y: 6.13), controlPoint1: CGPoint(x: 16.92, y: 9.48), controlPoint2: CGPoint(x: 16.18, y: 7.6))
                    shape.close()
                    shape.move(to: CGPoint(x: 8.46, y: 18.46))
                    shape.addCurve(to: CGPoint(x: 1.54, y: 11.54), controlPoint1: CGPoint(x: 4.64, y: 18.46), controlPoint2: CGPoint(x: 1.54, y: 15.36))
                    shape.addCurve(to: CGPoint(x: 8.46, y: 4.62), controlPoint1: CGPoint(x: 1.54, y: 7.72), controlPoint2: CGPoint(x: 4.64, y: 4.62))
                    shape.addCurve(to: CGPoint(x: 15.38, y: 11.54), controlPoint1: CGPoint(x: 12.28, y: 4.62), controlPoint2: CGPoint(x: 15.38, y: 7.72))
                    shape.addCurve(to: CGPoint(x: 8.46, y: 18.46), controlPoint1: CGPoint(x: 15.38, y: 15.36), controlPoint2: CGPoint(x: 12.28, y: 18.46))
                    shape.close()
                    shape.move(to: CGPoint(x: 8.46, y: 18.46))
                    context.saveGState()
                    color.setFill()
                    shape.fill()
                    context.restoreGState()
                    
                    /// Shape
                    let shape2 = UIBezierPath()
                    shape2.move(to: CGPoint(x: 1.31, y: 0.23))
                    shape2.addCurve(to: CGPoint(x: 0.23, y: 0.23), controlPoint1: CGPoint(x: 1.01, y: -0.08), controlPoint2: CGPoint(x: 0.53, y: -0.08))
                    shape2.addCurve(to: CGPoint(x: 0.23, y: 1.31), controlPoint1: CGPoint(x: -0.08, y: 0.53), controlPoint2: CGPoint(x: -0.08, y: 1.01))
                    shape2.addLine(to: CGPoint(x: 3.3, y: 4.39))
                    shape2.addCurve(to: CGPoint(x: 3.85, y: 4.62), controlPoint1: CGPoint(x: 3.45, y: 4.54), controlPoint2: CGPoint(x: 3.65, y: 4.62))
                    shape2.addCurve(to: CGPoint(x: 4.39, y: 4.39), controlPoint1: CGPoint(x: 4.04, y: 4.62), controlPoint2: CGPoint(x: 4.24, y: 4.54))
                    shape2.addCurve(to: CGPoint(x: 4.39, y: 3.3), controlPoint1: CGPoint(x: 4.69, y: 4.09), controlPoint2: CGPoint(x: 4.69, y: 3.6))
                    shape2.addLine(to: CGPoint(x: 1.31, y: 0.23))
                    shape2.close()
                    shape2.move(to: CGPoint(x: 1.31, y: 0.23))
                    context.saveGState()
                    context.translateBy(x: 7.69, y: 10.77)
                    color.setFill()
                    shape2.fill()
                    context.restoreGState()
                    
                    /// Shape
                    let shape3 = UIBezierPath()
                    shape3.move(to: CGPoint(x: 6.7, y: 4.84))
                    shape3.addCurve(to: CGPoint(x: 6.09, y: 4.62), controlPoint1: CGPoint(x: 6.53, y: 4.68), controlPoint2: CGPoint(x: 6.31, y: 4.6))
                    shape3.addCurve(to: CGPoint(x: 0.77, y: 0), controlPoint1: CGPoint(x: 5.72, y: 2.01), controlPoint2: CGPoint(x: 3.48, y: 0))
                    shape3.addCurve(to: CGPoint(x: 0, y: 0.77), controlPoint1: CGPoint(x: 0.34, y: 0), controlPoint2: CGPoint(x: 0, y: 0.34))
                    shape3.addCurve(to: CGPoint(x: 0.77, y: 1.54), controlPoint1: CGPoint(x: 0, y: 1.19), controlPoint2: CGPoint(x: 0.34, y: 1.54))
                    shape3.addCurve(to: CGPoint(x: 4.54, y: 4.62), controlPoint1: CGPoint(x: 2.63, y: 1.54), controlPoint2: CGPoint(x: 4.18, y: 2.87))
                    shape3.addCurve(to: CGPoint(x: 4.07, y: 4.84), controlPoint1: CGPoint(x: 4.37, y: 4.64), controlPoint2: CGPoint(x: 4.2, y: 4.71))
                    shape3.addCurve(to: CGPoint(x: 4.07, y: 5.93), controlPoint1: CGPoint(x: 3.77, y: 5.14), controlPoint2: CGPoint(x: 3.77, y: 5.63))
                    shape3.addLine(to: CGPoint(x: 4.84, y: 6.7))
                    shape3.addCurve(to: CGPoint(x: 5.38, y: 6.92), controlPoint1: CGPoint(x: 4.99, y: 6.85), controlPoint2: CGPoint(x: 5.19, y: 6.92))
                    shape3.addCurve(to: CGPoint(x: 5.93, y: 6.7), controlPoint1: CGPoint(x: 5.58, y: 6.92), controlPoint2: CGPoint(x: 5.78, y: 6.85))
                    shape3.addLine(to: CGPoint(x: 6.7, y: 5.93))
                    shape3.addCurve(to: CGPoint(x: 6.7, y: 4.84), controlPoint1: CGPoint(x: 7, y: 5.63), controlPoint2: CGPoint(x: 7, y: 5.14))
                    shape3.close()
                    shape3.move(to: CGPoint(x: 6.7, y: 4.84))
                    context.saveGState()
                    context.translateBy(x: 7.69, y: 6.15)
                    color.setFill()
                    shape3.fill()
                    context.restoreGState()
                    
                    context.restoreGState()
                }
                
                context.restoreGState()
            }
            
            context.restoreGState()
        }
        
        context.restoreGState()
    }
    
    
    //MARK: - Canvas Images
//    
//    /// Page 1
//    
//    class func imageOfArtboard() -> UIImage {
//        struct LocalCache {
//            static var image: UIImage!
//        }
//        if LocalCache.image != nil {
//            return LocalCache.image
//        }
//        var image: UIImage
//        
//        UIGraphicsBeginImageContextWithOptions(CGSize(width: 318, height: 125), false, 0)
//        VignettePost.drawVignette()
//        image = UIGraphicsGetImageFromCurrentImageContext()!
//        UIGraphicsEndImageContext()
//        
//        LocalCache.image = image
//        return image
//    }
    
    
    //MARK: - Resizing Behavior
    
    enum ResizingBehavior {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
    
    
}
