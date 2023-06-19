//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 18/06/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    //cria uma variável que é do tipo LoginView
    var viewMain = LoginView()
    
       override func loadView(){
           self.view = viewMain
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
