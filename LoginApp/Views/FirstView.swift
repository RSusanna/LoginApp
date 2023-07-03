//
//  ViewController.swift
//  LoginApp
//
//  Created by Susanna R on 26.06.2023.
//

import UIKit

class FirstView: UIViewController {
    
    
    //MARK: - аутлеты кнопок и текста
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
    
    
    // MARK: логика для кнопки забыл пароль
    @IBAction func tapForgetPasswordButton(_ sender: Any) {
    }
    
    
    
    // MARK: логика для кнопки Войти
    
    // Действие, вызываемое при нажатии на кнопку "Войти"
    @IBAction func tapLogInButton(_ sender: UIButton) {
        // Получение введенных значений из текстовых полей
        guard let usernameText = login.text,
              let passwordText = password.text
        else {
            return
            
        }
        if usernameText == "1" && passwordText == "1" {
            // Создание экземпляра ProfileView из сториборда
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
            let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
            let profileViewController = storyboard.instantiateViewController(withIdentifier: "ProfileView")
            // Установка модального стиля на fullScreen
                  profileViewController.modalPresentationStyle = .fullScreen
            
            self.present(profileViewController, animated: true, completion: nil)
        } else {
            //Вывод сообщения об ошибке
            let alert = UIAlertController(title: "Ошибка", message: "Неправильный логин или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
        }
    }

