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
    @IBOutlet weak var progress: UIActivityIndicatorView!

    @IBAction func loginUser(sender: UIButton) {
        self.user.resignFirstResponder()
        self.password.resignFirstResponder()
        if validateForm(){
            validateUser()
        }
    }
    
    func validateForm() -> Bool{
        if self.user.text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()) == ""{
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
    
    /*func validateUser() -> Bool{
        /*
        let userRequest = NSURLSession.sharedSession().dataTaskWithURL(urlAuthentication!){
            (data, response, error) in
                print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        }
        userRequest!.resume()*/
        self.progress.hidden = false
        self.progress.startAnimating()
        let urlAuthentication = "http://osiapppre02.colsanitas.com/osi/api/authenticateMobile/documentType/1/document/" + self.user.text! + "/password/" + self.password.text! 
        print(urlAuthentication)
        let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: urlAuthentication)!) {
            (data, response, error) in
            print(NSString(data: data!, encoding: NSUTF8StringEncoding)!)
            dispatch_async(dispatch_get_main_queue()){		
                self.progress.stopAnimating()
            }
        }
        
        task!.resume()
        return false
    }*/
    
    func validateUser() -> Bool{
        self.progress.hidden = false
        self.progress.startAnimating()
        print("startedNetworking")
        let urlAuthentication = "http://osiapppre02.colsanitas.com/osi/api/authenticateMobile/documentType/1/document/" + self.user.text! + "/password/" + self.password.text!
        let managerNetworking = AFHTTPRequestOperationManager()
        managerNetworking.GET(urlAuthentication,
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!, response: AnyObject!) in
                print(""+response.description)
                dispatch_async(dispatch_get_main_queue()){
                    self.progress.stopAnimating()
                }
            }) { (operation: AFHTTPRequestOperation!, error: NSError!) in
                print(""+error.localizedDescription)
        }
        return false
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}

