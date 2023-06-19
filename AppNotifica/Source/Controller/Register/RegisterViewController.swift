//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 18/06/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    //cria uma variável que é do tipo LoginView
    var viewMain = RegisterView()
    
       override func loadView(){
           self.view = viewMain
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Registrar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
