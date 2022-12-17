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
    
    private let personNatasha = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        viewControllers.forEach { viewContraller in
            if let welcomeVC = viewContraller as? WelcomeViewController {
                welcomeVC.natasha = personNatasha
            } else if let navigationVC = viewContraller as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
                personVC.natasha = personNatasha
            }
        }
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func buttonLogInPress() {
        guard userNameTF.text == personNatasha.userName, passwordTF.text == personNatasha.password  else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    //можно было один экшен вызывая конкретную кнопку по тагу через тернарный оператор, тогда нужен бы параметр сендер тип юайбаттон
    @IBAction func remindUserName() {
        showAlert(title: "Oops!", message: "Your name is \(personNatasha.userName) 😉")
    }
    
    @IBAction func remindPassword() {
        showAlert(title: "Oops!", message: "Your password is \(personNatasha.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension ViewController {
    
    private func showAlert(title: String, message: String, textField:  UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
