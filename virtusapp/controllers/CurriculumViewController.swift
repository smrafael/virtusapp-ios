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
        let expTextViewColor = UIColor(colorLiteralRed:204.0/255.0, green:204.0/255.0, blue:204.0/255.0, alpha:0.7)
        
        experienceTextView.layer.borderColor = expTextViewColor.cgColor
        experienceTextView.layer.borderWidth = 1.0
        experienceTextView.layer.cornerRadius = 5.0
    }
}
