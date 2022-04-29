//
//  ViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    static let identifier = "mainTabBarVC"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        //Tab bar menu...
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        searchViewController.tabBarItem.image = UIImage(systemName: "square.grid.2x2")

        
        homeViewController.title = "Home"
        searchViewController.title = "Explore"

        
        tabBar.tintColor = .label
        
        setViewControllers([homeViewController, searchViewController], animated: true)
    }

}

