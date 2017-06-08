//
//  ItemProductUIView.swift
//  BlupApp
//
//  Created by SUONG KÉVIN TAN on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit
import SwiftyJSON

class ItemProductUIView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        VignettePost.drawVignette(title: "Our last night", date: "04/07/1995", author: "@Calderis", image: #imageLiteral(resourceName: "album_blup"), color: UIColor(hue: 1, saturation: 0.608, brightness: 1, alpha: 1))
        
    }

}
