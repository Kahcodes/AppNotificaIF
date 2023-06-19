//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 18/06/23.
//

import Foundation

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    //MARK: - Initialize
    var onLoginTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var resgisterView: RegisterView = {
        var registerView = RegisterView()
        
        registerView.onLoginTap = {
            self.onLoginTap?()
        }
        return registerView
    }()
    
       override func loadView(){
           self.view = resgisterView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Registrar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
