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
    
    private let natasha = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoPetImage.image = UIImage(named: natasha.person.fotoMyPet)
        InfoLabel.text = natasha.person.info
    }
}
