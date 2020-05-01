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
      
        let cocktailSearchViewController = CocktailSearchViewController()
        let randomCocktailViewController = RandomCocktailViewController()
        let randomCocktailDetailsViewController = CocktailDetailsViewController()
        let cocktailDetailsViewController = CocktailDetailsViewController()
      
        
        let commonScenarioNavigationController = UINavigationController(rootViewController: cocktailSearchViewController)
        commonScenarioNavigationController.pushViewController(cocktailDetailsViewController, animated: true)
       
        let randomScenarioNavigationController = UINavigationController(rootViewController: randomCocktailViewController)
        randomScenarioNavigationController.pushViewController(randomCocktailDetailsViewController, animated: true)
        
        
        
        let tabBarController = UITabBarController()
        
        let searchItem = UITabBarItem()
        searchItem.title = "Search for cocktail"
        searchItem.image = UIImage(named: "SearchTabBarImage")
        commonScenarioNavigationController.tabBarItem = searchItem
        
        let randomItem = UITabBarItem()
        randomItem.title = "Random cocktail"
        randomItem.image = UIImage(named: "RandomTabBarImage")
        randomScenarioNavigationController.tabBarItem = randomItem
        
        tabBarController.setViewControllers([randomScenarioNavigationController, commonScenarioNavigationController], animated: true)
        window?.rootViewController = tabBarController
       
        return true
    }
}

