//
//  ViewController.swift
//  ReadingAndWriting
//
//  Created by JOEL CRAWFORD on 4/1/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     let defaults = UserDefaults.standard
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signInBtn: UIButton!
    
    let email = "test@gmail.com"
    let password = "12345678"
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //writting
        
        
        
    }
    
    

    //removing the nav controller from login page
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.isNavigationBarHidden = true
        
    }
    
    
//    override func viewDidDisappear(_ animated: Bool) {
//
//        //shows nav controller in the next VC
//         navigationController?.isNavigationBarHidden = false
//    }
    
    override func viewWillDisappear(_ animated: Bool) {
       //shows nav controller in the next VC
        navigationController?.isNavigationBarHidden = false
    }
    
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        
        //check if user entered correct email and password
        
        if email == emailTextField.text! && password == passwordTextField.text! {
            
            let vc = storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeViewController
            navigationController?.pushViewController(vc!, animated: true)
            
            
            
        } else {
            
            //shows an alert if not equal
            let alert = UIAlertController(title: "Alert", message: "Email or password is not matching", preferredStyle: .alert)
            
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    
  
    
    
    
    
    
    
    

}

