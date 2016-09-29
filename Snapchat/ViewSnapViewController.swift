//
//  ViewSnapViewController.swift
//  Snapchat
//
//  Created by Michael Cruz on 9/29/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class ViewSnapViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var snap = Snap()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = snap.descrip
    }

    

}
