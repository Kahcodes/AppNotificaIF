//
//  EscolherImagem.swift
//  AppNotifica
//
//  Created by IFBIOTIC11 on 20/06/23.
//

import Foundation
import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //Instância o controle do sistema de imagens
    var selecionador = UIImagePickerController()
    
    //Cria um alerta
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    //Cria um UIViewController
    var viewController: UIViewController?

    var retornoSelecionador : ((UIImage) -> ())?
    
    
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> ())) {
        
        retornoSelecionador = retorno
        
        //Declara o viewController como o passado como parâmetro, isso serve para as transições de tela.
        self.viewController = viewController
        
        //Cria uma ação que chama o método "openCamera"
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
            self.abrirCamera()
        }
        //Cria uma acao que chama o método "abrirGaleria"
        let galeria = UIAlertAction(title: "Galeria", style: .default){
            UIAlertAction in
            self.abrirGaleria()
        }
        
        //Cria uma outra ação
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
            UIAlertAction in
        }
        
        selecionador.delegate = self
        
        
        // Adiciona ações ao alerta
        alerta.addAction(camera)
        alerta.addAction(galeria)
        alerta.addAction(cancelar)
        
        //Exibe o alerta na tela
        alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    }
    
    
    //Abre a câmera
    func abrirCamera(){
        //Desfaz o alerta de seleção gerado anteriormente
        alerta.dismiss(animated: true, completion: nil)
        
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            selecionador.sourceType = .camera
            self.viewController?.present(selecionador, animated: true, completion: nil)
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Você não tem câmera", preferredStyle: .actionSheet)
            let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
                UIAlertAction in
            }
            alerta.addAction(cancelar)
            self.viewController?.present(alerta, animated: true, completion: nil)
        }
    }
    
    
    func abrirGaleria(){
        //Desfaz o alerta gerado
        alerta.dismiss(animated: true, completion: nil)
        
        selecionador.sourceType = .photoLibrary
        
        self.viewController?.present(selecionador, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        
        retornoSelecionador?(image)
    }
}
