//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 18/06/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Closures
    var onRegisterTap: (()-> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()
    
       override func loadView(){
           self.view = loginView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
