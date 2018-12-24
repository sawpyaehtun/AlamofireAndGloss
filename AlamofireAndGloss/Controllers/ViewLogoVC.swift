//
//  ViewLogoVC.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/24/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

class ViewLogoVC: UIViewController {
    
    var id : Int!
    @IBOutlet weak var imageView: UIImageView!
    let companyLogo : [UIImage] = [UIImage(named: "one.png")!,
                                   UIImage(named: "two.png")!,
                                   UIImage(named: "three.png")!,
                                   UIImage(named: "four.png")!,
                                   UIImage(named: "five.png")!,
                                   UIImage(named: "six.png")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Company Logo"
        imageView.image = companyLogo[ id - 1 ]
    }
}
