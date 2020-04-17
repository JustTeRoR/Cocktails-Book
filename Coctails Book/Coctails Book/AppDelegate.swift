//
//  AppDelegate.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/17/20.
//  Copyright © 2020 just_terror. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let rootViewController = MainViewController()
        let cocktailDetailsCOntroller = CocktailDetailsViewController()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([navigationController, cocktailDetailsCOntroller], animated: true)
        window?.rootViewController = tabBarController
        
        return true
    }
}

