//
//  Item.swift
//  BlupApp
//
//  Created by Corentin Marzin on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit
import SwiftyJSON

class Item: NSObject {
    
    var title: String!
    var duration: Int!
    var lendDate: String!
    var seasonNumber: Int!
    var serieName: String!
    var summary: String!
    var imageURL: String!
    
    
    //constructeur vide
    override init() {
        
    }
    
    init(json: JSON) {
        self.title = json["name"].stringValue
        self.duration = json["runtime"].intValue
        self.lendDate = json["lendDate"].stringValue
        self.seasonNumber = json["id"].intValue
        self.serieName = "Walking Dead"
        self.summary = json["note"].stringValue
        self.imageURL = json["img"].stringValue
        
    }
}
