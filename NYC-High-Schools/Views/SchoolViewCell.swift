//
//  SchoolViewCell.swift
//  NYC-High-Schools
//
//  Created by Gary Zamorano on 2/28/18.
//  Copyright © 2018 Gary Zamorano. All rights reserved.
//

import UIKit

class SchoolViewCell: UITableViewCell {

    @IBOutlet weak var schoolNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(school: School){
        let schoolNameTitle = school.schoolName ?? ""
        schoolNameLbl.text = "#\(schoolNameTitle)"
    }

}
