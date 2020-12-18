//
//  MainTabBarController.swift
//  Assignment4
//
//  Created by Macbook Pro on 2020-12-17.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

//this UITabBarController has been created to create a listener (when a tab item has been tapped)
class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //without this function, the CityViewController ("show details" button) will only be seen once when traversing tab bar items multiple times. With this implementation, tapping the tab bar item will always set the view to the rootview ie. CityViewController
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//
//        let rootView = self.viewControllers![self.selectedIndex] as! UINavigationController
//        rootView.popToRootViewController(animated: false)
//    }
    
    

}
