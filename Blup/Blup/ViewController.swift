//
//  ViewController.swift
//  Blup
//
//  Created by Corentin Marzin on 06/06/2017.
//  Copyright © 2017 Corentin Marzin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var statusCode: Int  = 0
        Alamofire.request("http://127.0.0.1:8000/api/items", method: .get)
            .responseJSON {
                response in
                statusCode = (response.response?.statusCode)! //Gets HTTP status code, useful for debugging
                if let value: AnyObject = response.result.value as AnyObject {
                    //Handle the results as JSON
                    let get = JSON(value)
                   
                        print(get)
                    }
                    else {
                        print("Mauvais mot de passe/username")
                    }
                }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

