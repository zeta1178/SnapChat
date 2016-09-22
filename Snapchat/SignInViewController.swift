//
//  SignInViewController.swift
//  Snapchat
//
//  Created by Michael Cruz on 9/22/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func turnupTapped(_ sender: AnyObject) {
        
    //FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: FIRAuthResultCallback?)
        
    }
    
}

