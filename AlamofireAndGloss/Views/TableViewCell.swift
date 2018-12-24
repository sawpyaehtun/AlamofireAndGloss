//
//  TableViewCell.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/21/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

protocol buttonDelegate {
    func didViewLogoTapped(id : Int)
    func didDetailTapped(company : Company)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var jobIDLabel: UILabel!
    @IBOutlet weak var jobID: UILabel!
    var companyItem : Company!
    var id : Int!
    var delegate : buttonDelegate!

    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    func setup( company : Company)
    {
        companyItem = company
        id = company.id!
        jobIDLabel.text = String(company.id!)
        jobID.text = String(company.job_id!)
    }
    
    @IBAction func detailTapped(_ sender: Any) {
        delegate.didDetailTapped(company: companyItem)
    }
    
    @IBAction func viewLogoTapped(_ sender: Any) {
        delegate.didViewLogoTapped(id: id)
    }
    
}
