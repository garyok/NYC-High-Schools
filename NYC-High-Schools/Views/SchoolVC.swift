//
//  SchoolVC.swift
//  NYC-High-Schools
//
//  Created by Gary Zamorano on 2/28/18.
//  Copyright © 2018 Gary Zamorano. All rights reserved.
//

import UIKit

class SchoolVC: UITableViewController{

    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        SchoolService.instance.findAllSchool { (success) in
            
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SchoolService.instance.schools.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "schoolCell", for: indexPath) as? SchoolViewCell{
            let school = SchoolService.instance.schools[indexPath.row]
            cell.configureCell(school: school)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    



}
