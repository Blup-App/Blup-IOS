//
//  Loan_item.swift
//  Blup
//
//  Created by Corentin Marzin on 06/06/2017.
//  Copyright © 2017 Corentin Marzin. All rights reserved.
//

import UIKit
import SwiftyJSON

class Loan_item: NSObject {
    
    var title: String!
    var img: String!
    var note: String!
    var returnDate: NSDate!
    var lendDate: NSDate!
    var reminder: NSDate!
    var adress: String!
    
    override init() {
        
    }
    
    //nouveau contructeur avec JSON en entrée
    //Create Episode from JSON
    init(json: JSON) {
        
//        self.title = json["name"].stringValue
//        self.img = json["img"].stringValue
//        self.note = json["note"].stringValue
//        self.seasonNumber = json["season"].intValue
//        self.serieName = "Walking Dead"
//        self.summary = json["summary"].stringValue
//        self.imageURL = json["image"]["original"].stringValue
        
    }

}
