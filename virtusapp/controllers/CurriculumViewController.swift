//
//  CurriculumViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit

class CurriculumViewController : UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var telephoneTextField: UITextField!
    @IBOutlet weak var areaTextField: UITextField!
    @IBOutlet weak var experienceTextView: UITextView!
    
    
    override func viewDidLoad() {
        // Setting TextView style
        let expTextViewColor = UIColor(colorLiteralRed:204.0/255.0, green:204.0/255.0, blue:204.0/255.0, alpha:0.7)
        experienceTextView.layer.borderColor = expTextViewColor.cgColor
        experienceTextView.layer.borderWidth = 1.0
        experienceTextView.layer.cornerRadius = 5.0
    }
    
    @IBAction func create(_ sender: Any) {
        let name = nameTextField.text
        let area = areaTextField.text
        let phone = telephoneTextField.text
        let email = emailTextField.text
        let exp = experienceTextView.text
        
        if (!(name ?? "").isEmpty &&
            !(area ?? "").isEmpty &&
            !(phone ?? "").isEmpty &&
            !(email ?? "").isEmpty &&
            !(exp ?? "").isEmpty) {
            
            let button = sender as! UIButton
            button.isEnabled = false
            
            let curriculum = Curriculum(name: name!, area: area!, phone: phone!, email: email!, experience: exp!)
            CurriculumProxy.createCurriculum(curriculum: curriculum, { success in
                if (success) {
                    func action(uiAlertAction: UIAlertAction) {
                        if let navigationController = self.navigationController {
                            navigationController.popViewController(animated: true)
                        }
                    }
                    Info(controller: self).show(title: "Sucesso!", message: "Seu currículo foi cadastrado com sucesso", handler: action)
                } else {
                    Alert(controller: self).show(message: "Não foi possível cadastrar o seu currículo")
                }
            })
        }
    }
}
