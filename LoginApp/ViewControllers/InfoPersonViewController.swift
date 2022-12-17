//
//  InfoPersonViewController.swift
//  LoginApp
//
//  Created by Наталья Миронова on 17.12.2022.
//

import UIKit

class InfoPersonViewController: UIViewController {

    @IBOutlet var fotoPetImage: UIImageView!
    @IBOutlet var InfoLabel: UILabel!
    
    var infoPerson = ""
    var fotoPet = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoPetImage.image = UIImage(named: fotoPet)
        InfoLabel.text = infoPerson
    }
}


