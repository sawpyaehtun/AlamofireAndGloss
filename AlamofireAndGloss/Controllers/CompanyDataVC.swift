//
//  CompanyDataVC.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/24/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

class CompanyDataVC: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var jobIdLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    var company : Company!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Company Data"
        idLabel.text = String(company.id!)
        jobIdLabel.text = String(company.job_id!)
        priorityLabel.text = String(company.priority!)
        companyLabel.text = company.company!
        latitudeLabel.text = String(company.geolocation!.latitude!)
        longitudeLabel.text = String(company.geolocation!.longitude!)
    }
    

}
