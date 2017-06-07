//
//  LoginController.swift
//  Blup
//
//  Created by Corentin Marzin on 06/06/2017.
//  Copyright © 2017 Corentin Marzin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginController: UIViewController {
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginTaped(_ sender: Any) {
        let username = usernameField.text;
        let password = passwordField.text;
        
        
        var statusCode: Int  = 0
        Alamofire.request("http://127.0.0.1:8000/api/users", method: .get)
            .responseJSON {
                response in
                statusCode = (response.response?.statusCode)! //Gets HTTP status code, useful for debugging
                if let value: AnyObject = response.result.value as AnyObject {
                    //Handle the results as JSON
                    let get = JSON(value)
                    let transformArray = get["hydra:member"];
                    let TakeFirstUser = transformArray[0];
                    let TakeFirstUserName = TakeFirstUser["name"].string;
                    let TakeFirstPassword = TakeFirstUser["password"].string;
                    
                    if TakeFirstUserName == username && TakeFirstPassword == password {
                        print("All done")
                        //get storyboard
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        print(storyboard)
                        //get viewController from Storyboard (with ID)
                        let homeController = storyboard.instantiateViewController(withIdentifier: "NavigationID")
                        print(homeController)
                        //Display View Controller in Modal mode (full screen)
                        self.present(homeController, animated: true, completion: nil)

                    }
                    else {
                        print("Mauvais mot de passe/username")
                    }
                }
        }
    }
    
}
