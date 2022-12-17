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
    
    var natasha: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoPersonVC = segue.destination as? InfoPersonViewController else { return }
        infoPersonVC.infoPerson = natasha.person.info
        infoPersonVC.fotoPet = natasha.person.fotoMyPet
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namePersonLabel.text = natasha.person.name
        agePersonLabel.text = natasha.person.age.formatted()
        hobbyPersonLabel.text = natasha.person.hobby
        petPersonLabel.text = natasha.person.pet.rawValue
    }
}

