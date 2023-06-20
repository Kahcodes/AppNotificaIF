//
//  SobreCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 20/06/23.
//

import Foundation
import UIKit

class SobreCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        //adiciona o nome home na tabbar
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
