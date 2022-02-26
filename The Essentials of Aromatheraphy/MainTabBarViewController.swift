//
//  ViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        //Tab bar menu...
        let cartViewController = UINavigationController(rootViewController: CartViewController())
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        cartViewController.tabBarItem.image = UIImage(systemName: "cart")
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        homeViewController.title = "Home"
        cartViewController.title = "Cart"
        searchViewController.title = "Search"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeViewController, searchViewController, cartViewController], animated: true)
    }
}

