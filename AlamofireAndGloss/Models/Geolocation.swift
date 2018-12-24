//
//  Geolocation.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/19/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import Foundation

struct Geolocation {
    let latitude : Double?
    let longitude : Double?
    init(lat : Double?, longi : Double?) {
        self.latitude = lat
        self.longitude = longi
    }
}
