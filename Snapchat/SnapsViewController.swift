//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Michael Cruz on 9/22/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
}
