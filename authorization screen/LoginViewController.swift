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
        guard loginTextField.text == login, passwordTextField.text == password
        else {
            return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    


}

