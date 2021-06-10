//
//  WelcomeViewController.swift
//  authorization screen
//
//  Created by Vlad Zinevich on 09.06.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: Public properties
    var login: String!
    
    // MARK: Private properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(login ?? "Noname")!"
    }

}
