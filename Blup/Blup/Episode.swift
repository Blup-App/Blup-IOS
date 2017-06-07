//
//  Episode.swift
//  heettiicc
//
//  Created by Joris Thiery on 27/04/2017.
//  Copyright © 2017 neopixl. All rights reserved.
//

import UIKit
import SwiftyJSON

class Episode: NSObject {

//    var title: String!
//    var duration: Int!
//    var episodeNumber: Int!
//    var seasonNumber: Int!
//    var serieName: String!
//    var summary: String!
//    var imageURL: String!
//    
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
    
    //nouveau contructeur avec JSON en entrée
    //Create Episode from JSON
//    init(json: JSON) {
//        self.title = json["name"].stringValue
//        self.duration = json["runtime"].intValue
//        self.episodeNumber = json["number"].intValue
//        self.seasonNumber = json["season"].intValue
//        self.serieName = "Walking Dead"
//        self.summary = json["summary"].stringValue
//        self.imageURL = json["image"]["original"].stringValue
//        
//    }
    
    //nouveau contructeur avec JSON en entrée
    //Create Episode from JSON
    init(json: JSON) {
        self.title = json["title"].stringValue
        self.duration = json["runtime"].intValue
        self.lendDate = json["lendDate"].stringValue
        self.seasonNumber = json["id"].intValue
        self.serieName = "Walking Dead"
        self.summary = json["note"].stringValue
        self.imageURL = json["img"].stringValue
        
    }
}
