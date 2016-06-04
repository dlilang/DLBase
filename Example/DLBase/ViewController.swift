//
//  ViewController.swift
//  DLBase
//
//  Created by dlilang on 06/04/2016.
//  Copyright (c) 2016 dlilang. All rights reserved.
//

import UIKit
import DLBase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        "1234567890".md5().log()
    }

}

