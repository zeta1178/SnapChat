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
        
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("We tried to sign in")
            if error != nil {
                print("Hey we have an error:\(error)")
                
                FIRAuth.auth()?.createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("We tried to create a user")
                    
                    if error != nil {
                        print("Hey we have an error:\(error)")
                    } else {
                        print("Created user successfully!")
                        self.performSegue(withIdentifier: "signinSegue", sender: nil)
                    }
                    })
            } else {
                print("Signed in Successfully")
                self.performSegue(withIdentifier: "signinSegue", sender: nil)
            }
        })
        
    }
    
}

