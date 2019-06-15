//
//  ProfileViewController.swift
//  TabControllerSwiftTutorial
//
//  Created by Jordan Roberts on 15/06/2019.
//  Copyright © 2019 Jordan Roberts. All rights reserved.
//

import Foundation
import UIKit // contains the ViewController information

class ProfileViewController: UIViewController {
    
    var userName: String? 
    var passWord: String?
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        
        passwordLabel.text = passWord
    }
    
    @IBAction func Logout(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
