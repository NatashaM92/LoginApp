//
//  ViewController.swift
//  LoginApp
//
//  Created by Наталья Миронова on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = userNameTF.text
    }
    
    @IBAction func buttonLogInPress() {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func remindUserName() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func remindPassword() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension ViewController {
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
