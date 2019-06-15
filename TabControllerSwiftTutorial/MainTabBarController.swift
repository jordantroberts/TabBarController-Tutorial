//
//  MainTabBarController.swift
//  TabControllerSwiftTutorial
//
//  Created by Jordan Roberts on 15/06/2019.
//  Copyright © 2019 Jordan Roberts. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    var userName: String?
    var password: String? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else {
            return
        }
        for viewControllers in viewControllers {
            if let profileNavigationController = viewControllers as? ProfileNavigationController {
                if let profileViewController = profileNavigationController.viewControllers.first as? ProfileViewController {
                    profileViewController.userName = userName
                    profileViewController.passWord = password
                }
            }
        }
    }
}
