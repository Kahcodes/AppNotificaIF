//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 19/06/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        return sobreView
    }()
    
    override func loadView(){
        self.view = sobreView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
}
