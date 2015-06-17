//
//  ViewController.swift
//  SwiftApp
//
//  Created by Lancer Lancer on 6/7/15.
//  Copyright (c) 2015 Lancer Lancer. All rights reserved.
//

import UIKit

class LoginController: CustomUiViewController {
    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBAction func loginUser(sender: UIButton) {
        self.user.resignFirstResponder()
        self.password.resignFirstResponder()
        validateForm()
    }
    
    func validateForm() -> Bool{
        if self.user.text == ""{
            self.user.error("")
            return false
        }else{
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.user.defaultStyle()
        self.password.secureTextEntry = true
    }

       
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}

