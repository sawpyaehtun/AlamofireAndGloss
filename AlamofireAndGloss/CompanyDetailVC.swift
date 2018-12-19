//
//  CompanyDetailVC.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/19/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

class CompanyDetailVC: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var jobIDLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var company : Company!
    let companyLogo : [UIImage] = [UIImage(named: "one.png")!,
                                   UIImage(named: "two.png")!,
                                   UIImage(named: "three.png")!,
                                   UIImage(named: "four.png")!,
                                   UIImage(named: "five.png")!,
                                   UIImage(named: "six.png")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = companyLogo[company.id! - 1]
        idLabel.text = String(company.id!)
        jobIDLabel.text = String(company.job_id!)
        priorityLabel.text = String(company.priority!)
        companyLabel.text = String(company.company!)
        latitudeLabel.text = String(company.geolocation!.latitude!)
        longitudeLabel.text = String(company.geolocation!.longitude!)
    }


}
