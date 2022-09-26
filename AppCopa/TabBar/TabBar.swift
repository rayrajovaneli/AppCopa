//
//  TabBar.swift
//  AppCopa
//
//  Created by user218260 on 9/26/22.
//

import UIKit

class TabBar: UITabBarController {
    override func viewDidLoad() {
            super.viewDidLoad()

            let vc1 = HomeView()
            let vc2 = SearchView()
            let vc3 = AnounceView()
            
            let nav1 = UINavigationController(rootViewController: vc1)
            let nav2 = UINavigationController(rootViewController: vc2)
            let nav3 = UINavigationController(rootViewController: vc3)
            
            nav1.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), tag: 1)
            nav2.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "arrow.down.forward.and.arrow.up.backward"), tag: 1)
            nav3.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "square.grid.2x2.fill"), tag: 1)
            
            UITabBar.appearance().tintColor =  UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)

            setViewControllers([nav1, nav2, nav3], animated: false)
        }

}
