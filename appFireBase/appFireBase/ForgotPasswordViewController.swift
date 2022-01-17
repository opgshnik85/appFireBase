//
//  ForgotPasswordViewController.swift
//  appFireBase
//
//  Created by MacBook on 17.01.2022.
//

import UIKit
import FirebaseAuth
class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func forgotButtonAction(_ sender: UIButton) {
        let email = emailField.text!
        if(!email.isEmpty){
            Auth.auth().sendPasswordReset(withEmail: email) { (error) in
                if error == nil{
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

