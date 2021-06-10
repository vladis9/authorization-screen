//
//  LoginViewController.swift
//  authorization screen
//
//  Created by Vlad Zinevich on 03.06.2021.
//

import UIKit

class LoginViewController: UIViewController {
   
    // MARK: IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: Private properties
    private let login = "Vlad"
    private let password = "Pass"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "logIn" else { return }
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.login = loginTextField.text
    }
    
    
    // MARK: IB Actions
    
    @IBAction func loginPressed() {
        guard
            loginTextField.text == login,
            passwordTextField.text == password
        else {
            showAlert(title: "Invalid login or password", message: "Enter correct login and password", textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    @IBAction func forgotLoginPressed() {
        showAlert(title: "Oops", message: "Your name is \(login)")
    }
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops", message: "Your password is \(password)")
    }
}

// MARK: Alert controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

