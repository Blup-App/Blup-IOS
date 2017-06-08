//
//  BackgroundUIView.swift
//  BlupApp
//
//  Created by SUONG KÉVIN TAN on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit

class BackgroundUIView: UIView {

    
    override func draw(_ rect: CGRect) {
        Wave.drawWave()
    }
 

}
