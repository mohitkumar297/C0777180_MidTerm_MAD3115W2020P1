//
//  ViewController.swift
//  C0777180_MidTerm_MAD3115W2020P1
//
//  Created by Mohit Kumar on 2020-03-05.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let email = "mohit@gmail.com"
    let password = "mohit123"
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var switchSave: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        
        do{
            try login()
        }
    }
    
    func login() throws{
        let email = emailTextField.text!
        let pass = passwordTextField.text!

        if email.isEmpty || pass.isEmpty {
            throw LoginError.incomplete
        }
        if !email.isValidEmail{
            throw LoginError.emailError
        }
        if pass.count < 8 {
            throw LoginError.passwordError
        }

    }
    
}

