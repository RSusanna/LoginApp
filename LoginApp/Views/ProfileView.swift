//
//  ProfileView.swift
//  LoginApp
//
//  Created by Susanna R on 27.06.2023.
//

import UIKit


class ProfileView: UIViewController {
    
    @IBOutlet var funnyImage: UIImageView!
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var exitButton: UIButton!
    
    @IBOutlet var personTapBar: UITabBar!
    
    @IBOutlet var profile: UITabBarItem!
    
    @IBOutlet var personal: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // изначальная настройка экрана
        funnyImage.alpha = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0
        exitButton.setTitle("выход", for: .normal)
        profile.title = "профиль"
        personal.title = "личное"
        
        //MARK: - логика для слайдера
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    @objc func sliderValueChanged(_ sender: UISlider) {
        let alphaValue = CGFloat(sender.value)
        funnyImage.alpha = alphaValue
    }
    
    
    
    
    
    //MARK: - логика для кнопки выход
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        
        let firstView = FirstView()
        firstView.modalPresentationStyle = .fullScreen
        self.present(firstView, animated: true, completion: nil)
    }
    
    
    //MARK: - логика для тап бара
    
    let personalView = UIViewController()
    
    }
    


