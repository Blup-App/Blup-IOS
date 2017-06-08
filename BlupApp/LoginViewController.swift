//
//  LoginViewController.swift
//  BlupApp
//
//  Created by Corentin Marzin on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {


    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //first function called when viewController is instanciate
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.configureMyViews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func to configure text and color of my view
    func configureMyViews() {
        
        loginButton.backgroundColor = UIColor.red
        loginButton.setTitle("Login", for: .normal)
        
        //mainImageView.image = #imageLiteral(resourceName: "CircleFeedback")
        
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
        
        passwordTextField.isSecureTextEntry = true
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let userText = usernameTextField.text
        let passText = passwordTextField.text
        
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
                    
                    if TakeFirstUserName == userText && TakeFirstPassword == passText {
                        print("All done")
                        //get storyboard
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        //get viewController from Storyboard (with ID)
                        let homeController = storyboard.instantiateViewController(withIdentifier: "NavigationID")
                        //Display View Controller in Modal mode (full screen)
                        self.present(homeController, animated: true, completion: nil)
                    }
                    else {
                        print("Mauvais mot de passe/username")
                    }
                }
        }
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
