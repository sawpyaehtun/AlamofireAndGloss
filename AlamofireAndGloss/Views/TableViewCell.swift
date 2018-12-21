//
//  TableViewCell.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/21/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var jobIDLabel: UILabel!
    @IBOutlet weak var jobID: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    func setup( company : Company)
    {
        jobIDLabel.text = String(company.id!)
        jobID.text = String(company.job_id!)
    }
    
}
