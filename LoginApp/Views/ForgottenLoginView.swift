//
//  ForgottenLoginView.swift
//  LoginApp
//
//  Created by Susanna R on 27.06.2023.
//

import UIKit

class ForgottenLoginView: UIViewController {
    //MARK: кнопочки
    @IBOutlet var helpButton: UIButton!
    @IBOutlet var resetPassword: UIButton!
    //MARK: текст
    
    @IBOutlet var adviceText: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adviceText.isHidden = true
        
    }
    
    var tapCount = 0
    
    
    //MARK: логика для кнопки подсказки
    @IBAction func helpButtonAction(_ sender: Any) {
        adviceText.isHidden = false
        tapCount += 1
        switch tapCount % 4 {
        case 0:
            adviceText.text = "Девичья фамилия матери"
        case 1:
            adviceText.text = "Имя друга детства"
        case 2:
            adviceText.text = "Прозвище в школе"
        case 3:
            adviceText.text = "Видимо все таки нужно сбросить пароль..."
        default:
            break
        }
    }
}

