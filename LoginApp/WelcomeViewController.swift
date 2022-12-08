//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Наталья Миронова on 07.12.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var smileLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(welcomeUser!)"
        smileLabel.text = "👋"
    }
}
