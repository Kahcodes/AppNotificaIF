//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 18/06/23.
//

import Foundation
import UIKit
class RegisterCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator implemente o navigation controller. Senão todos todas as vezes teria que instanciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = RegisterViewController()
            self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }

    }
    
    //função que chama a registerView
    func  gotoLogin() {
        
        
        self.navigationController.popViewController(animated: true)
    }
}
