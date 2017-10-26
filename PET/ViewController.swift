//
//  ViewController.swift
//  PET
//
//  Created by Wolf on 2017-10-18.
//  Copyright © 2017 TEAMX. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController
{
    // Do any additional setup after loading the view, typically from a nib.
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    // Dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var textField_username: UITextField!
    @IBOutlet weak var textField_passowrd: UITextField!
    @IBOutlet weak var Lable_LoginError: UILabel!
    

    
    @IBAction func button_login(_ sender: Any)
    {
        if let email = textField_username.text, let password = textField_passowrd.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: {user, error in
                if let firebaseError = error {
                    self.Lable_LoginError.text = "ERROR"
                    print(firebaseError.localizedDescription)
                }
                self.presentLoggedInScreen()
                print("GGG")
            })
        }
    }
    
    @IBAction func button_signUp(_ sender: Any)
    {
        if let email = textField_username.text, let password = textField_passowrd.text {
            Auth.auth().createUser(withEmail: email, password: password, completion: {user, error in
                if let firebaseError = error{
                    self.Lable_LoginError.text = "ERROR"
                    print(firebaseError.localizedDescription)
                }
                print("GGG")
            })
        }
    }
    
    func presentLoggedInScreen(){
        let storyboard:UIStoryboard = UIStoryboard(name: "mani", bundle: nil)
        let loggedInVC:Main_menu = storyboard.instantiateViewController(withIdentifier: "Main_menu") as! Main_menu
        self.present(loggedInVC, animated: false, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
