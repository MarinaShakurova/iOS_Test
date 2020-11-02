//
//  ViewController.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var submit: UIButton!
    
    @IBAction func onSubmit(_ sender: Any) {
        let login = "User"
        let password = "1234"
        if loginTextField.text == login && passwordTextField.text == password{
            let viewController =  storyboard?.instantiateViewController(withIdentifier: "ListTest")
            navigationController?.pushViewController(viewController!, animated: true)
        }
        else{
            let alertController = UIAlertController(title: "Error", message: "Логин или пароль неверные",
                                                    preferredStyle: .alert)
            alertController.addAction(.init(title: "Закрыть", style: .cancel ,handler:nil))
            present(alertController, animated:true, completion: nil)
        }
}

    override func viewDidLoad() {
        titleLabel.text = "Sigma Skills"
        loginLabel.text = "Login"
        passwordLabel.text = "Password"
        submit.setTitle("Submit", for: .normal)
    }
    
}

