//
//  ViewController.swift
//  NYC-High-Schools
//
//  Created by Gary Zamorano on 2/27/18.
//  Copyright © 2018 Gary Zamorano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SchoolService.instance.findAllSchool { (success) in
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

