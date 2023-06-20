//
//  TabbarController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 20/06/23.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    //sobrescreve o método responsável pro controlar os elementos na tela
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGroundColor
        
    }
}
