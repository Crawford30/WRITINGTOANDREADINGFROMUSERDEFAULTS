//
//  HomeViewController.swift
//  ReadingAndWriting
//
//  Created by JOEL CRAWFORD on 4/1/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
