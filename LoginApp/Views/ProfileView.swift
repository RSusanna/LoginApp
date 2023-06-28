//
//  ProfileView.swift
//  LoginApp
//
//  Created by Susanna R on 27.06.2023.
//

import UIKit


class ProfileView: UIViewController {
    
    @IBOutlet var welcomingText: UITextField!
    @IBOutlet var exit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomingText.isHidden = false 
    }

}
