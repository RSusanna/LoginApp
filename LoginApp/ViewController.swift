//
//  ViewController.swift
//  LoginApp
//
//  Created by Susanna Zakaryan on 26.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var helpButton: UIButton!
    @IBOutlet var forgetPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        login.placeholder = "Введите логин"
        password.placeholder = "Введите пароль"
    }
}
