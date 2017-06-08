//
//  NetworkManager.swift
//  BlupApp
//
//  Created by Corentin Marzin on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NetworkManager: NSObject {
    
    //crée une closure (callback) pour les retours asynchrones
    //Closure = fonction qui n'a pas de nom et return du vide
    //Mettre en entrée le type de retour
    typealias ItemResult = ([Item]) -> ()
    
    
    //Closure completionHandler est de type EpisodesResult
    static func getItem(completionHandler: @escaping ItemResult) {
        
        //On utilise une closure pour rendre l'application asynchrone (ouvre un thread asynchrone)
        //print("1 -")
        // http://127.0.0.1:8000/api/items
        Alamofire.request("http://127.0.0.1:8000/api/items").responseJSON{(response) in
            // réponse du serveur
            //print("2 -")
            
            switch response.result{
            case .failure(_):
                //manage error
                //Retour asynchrone - On utilise une closure
                completionHandler([])
                
            case .success(_):
                //manage success data - récupérer les datas
                let data = response.data
                //transformer le data en JSON SwiftyJSON
                let json = JSON(data)
                let transformArray = json["hydra:member"];
                
                //transformer le JSON en tableau SwiftyJSON
                let itemArrayJSON = transformArray.arrayValue
                var arrayOfItems = [Item]()
                
                print(itemArrayJSON)
                //boucler dans le tableau for in
                for itemJSON in itemArrayJSON {
                    
                    //init episode frome JSON
                    let realItem = Item(json: itemJSON)
                    
                    //add episode to array
                    arrayOfItems.append(realItem)
                    
                }
                
                //return async/closure/callback array of episodes
                completionHandler(arrayOfItems)
                
                
            }
        }
        //print("3 -")
        //return []
    }
}

