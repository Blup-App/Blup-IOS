//
//  NetworkManager.swift
//  Blup
//
//  Created by Corentin Marzin on 07/06/2017.
//  Copyright © 2017 Corentin Marzin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NetworkManager: NSObject {

//    //crée une closure (callback) pour les retours asynchrones
//    //Closure = fonction qui n'a pas de nom et return du vide
//    //Mettre en entrée le type de retour
//    //typealias EpisodesResult = ([Episode]) -> ()
//    
//    
//    //Closure completionHandler est de type EpisodesResult
//    static func getEpisodesOfWalkingDead(completionHandler: @escaping EpisodesResult) {
//        
//        //On utilise une closure pour rendre l'application asynchrone (ouvre un thread asynchrone)
//        //print("1 -")
//        Alamofire.request("http://api.tvmaze.com/shows/73/episodes").responseJSON{(response) in
//            // réponse du serveur
//            //print("2 -")
//            
//            switch response.result{
//            case .failure(_):
//                //manage error
//                //Retour asynchrone - On utilise une closure
//                completionHandler([])
//                
//            case .success(_):
//                //manage success data - récupérer les datas
//                let data = response.data
//                //transformer le data en JSON SwiftyJSON
//                let json = JSON(data)
//                
//                //transformer le JSON en tableau SwiftyJSON
//                let episodesArrayJSON = json.arrayValue
//             //   var arrayOfEpisodes = [Episode]()
//                
//                
//                //boucler dans le tableau for in
//                for episodeJSON in episodesArrayJSON {
//                    
//                    //init episode frome JSON
//                //    let realEpisode = Episode(json: episodeJSON)
//                    
//                    //add episode to array
//                    arrayOfEpisodes.append(realEpisode)
//                    
//                }
//                
//                //return async/closure/callback array of episodes
//                completionHandler(arrayOfEpisodes)
//                
//            }
//        }
//        //print("3 -")
//        //return []
//    }
}
