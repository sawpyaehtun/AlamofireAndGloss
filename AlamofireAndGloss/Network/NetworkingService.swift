//
//  NetworkingService.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/19/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import Foundation
import Alamofire
typealias JSON = [String : Any]

class NetworkingService {
    
    static let networkCall = NetworkingService()
    
    private init(){}
    
    func getCompanies(success successBlock: @escaping ([Company]) -> Void) {
        Alamofire.request("https://api.myjson.com/bins/8d195.json")
            .responseJSON { (response) in
                guard let json = response.result.value as? [JSON] else {print("fail"); return}
                let companies = self.getCompanyArray(json: json)
                successBlock(companies)
        }
    }
    
    func getCompanyArray(json : [JSON]) -> [Company] {
        
        var companies = [] as [Company]
        
        for jsonObj in json
        {
            companies.append(Company(json: jsonObj)!)
        }
        
        return companies
    }
    
}

