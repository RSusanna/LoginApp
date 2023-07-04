//
//  ProfileView.swift
//  LoginApp
//
//  Created by Susanna R on 27.06.2023.
//

import UIKit








class ProfileView: UIViewController, UITabBarDelegate {
    
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
        personTapBar.delegate = self
        
        
        
        
        //MARK: - логика для слайдера
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    @objc func sliderValueChanged(_ sender: UISlider) {
        let alphaValue = CGFloat(sender.value)
        funnyImage.alpha = alphaValue
    }
    
    
    
    
    
    //MARK: - логика для кнопки выход
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "FirstView")
        firstViewController.modalPresentationStyle = .fullScreen
        self.present(firstViewController, animated: true, completion: nil)
    }
    
    //MARK: - логика для тап бара
    
    func tabBar( _ tabBar: UITabBar, didSelect item: UITabBarItem ) {
        if item == profile {
        
            navigationController?.popToViewController(self, animated: false)
            
        } else if item == personal {
            let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
                   let personalViewController = storyboard.instantiateViewController(withIdentifier: "PersonalView")
                   navigationController?.pushViewController(personalViewController, animated: true)
               }
           }
        }
        
    


