//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Наталья Миронова on 16.12.2022.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var namePersonLabel: UILabel!
    @IBOutlet var agePersonLabel: UILabel!
    @IBOutlet var hobbyPersonLabel: UILabel!
    @IBOutlet var petPersonLabel: UILabel!
    
    private let natasha = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namePersonLabel.text = natasha.person.name
        agePersonLabel.text = natasha.person.age.formatted()
        hobbyPersonLabel.text = natasha.person.hobby
    }
}
