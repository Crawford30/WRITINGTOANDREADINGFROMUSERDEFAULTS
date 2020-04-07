//
//  HomeViewController.swift
//  ReadingAndWriting
//
//  Created by JOEL CRAWFORD on 4/1/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var greeting: UILabel!
    
    @IBOutlet weak var userTypeLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        greeting.text = UserDefaults.standard.string(forKey: "email" )!

        userTypeLabel.text = UserDefaults.standard.string(forKey: "isProvider" )!

    }
    
////Hiding the back button
//    
//    override func viewWillAppear(_ animated: Bool) {
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)
//    }
    
    
    @IBAction func logOutClicked(_ sender: UIBarButtonItem) {
        
        UserDefaults.standard.removeObject(forKey: "email")
        
        //redirect to login
        let vc = storyboard?.instantiateViewController(identifier: "LogIn") as? ViewController
        
        let navVC = UINavigationController(rootViewController: vc!)
        
        let shared = UIApplication.shared.delegate as? AppDelegate
        
        shared?.window?.rootViewController = navVC
        shared?.window?.makeKeyAndVisible()
        
        print("log out")
    }
    
}
