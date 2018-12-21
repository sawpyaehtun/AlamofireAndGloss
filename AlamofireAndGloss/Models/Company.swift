//
//  Company.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/19/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import Foundation
import Gloss

struct Company {
    let id : Int?
    let job_id : Int?
    let priority : Int?
    let company : String?
    let address : String?
    let geolocation : Geolocation?
    
    init?(json: JSON) {
        self.id = "id" <~~ json
        self.job_id = "job-id" <~~ json
        self.priority = "priority" <~~ json
        self.company = "company" <~~ json
        self.address = "address" <~~ json
        self.geolocation = Geolocation(lat: ("geolocation.latitude" <~~ json)!, longi: ("geolocation.longitude" <~~ json)!)
    }
}

