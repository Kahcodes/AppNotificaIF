//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 20/06/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        
        return novaOcorrenciaView
    }()
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
    }
}
