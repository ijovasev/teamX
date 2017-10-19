//
//  ViewController.swift
//  PET
//
//  Created by Wolf on 2017-10-18.
//  Copyright © 2017 TEAMX. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let username = "jerry"
    let password = "1234"
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var textField_username: UITextField!
    
    @IBOutlet weak var textField_passowrd: UITextField!
    
    @IBOutlet weak var Lable_LoginError: UILabel!
    
    @IBAction func button_login(_ sender: Any)
    {
        var in_name = ""
        var in_password = ""
        
        in_name = textField_username.text!
        in_password = textField_passowrd.text!
        
        if in_name == username && in_password == password
        {
            Lable_LoginError.text = "Good"

            performSegue(withIdentifier: "seg1", sender: self)
            
        }
        else
        {
            Lable_LoginError.text = "Bad"
        }
    }
    
    @IBAction func button_signUp(_ sender: Any)
    {
        Lable_LoginError.text = "signup"
    }
    
    
}
