//
//  DetailsProductUIView.swift
//  BlupApp
//
//  Created by SUONG KÉVIN TAN on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit

class DetailsProductUIView: UIView {

    override func draw(_ rect: CGRect) {
        self.center.y += self.bounds.height
        
        DetailsPost.drawArtboard(tempsRestant: "13", dateDebut: "10/05", dateFin: "09/06", title: "Fichtre banana", preter: "@Coco", emprunter: "Calderis", notes: "Bananaaaaaaaa je veux des bananaaaa. Give me banana plize :D", cover: #imageLiteral(resourceName: "album_blup"))
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.curveEaseInOut;
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: transitionOptions, animations: {
            self.center.y -= self.bounds.height
        }, completion: nil)
    }

}
