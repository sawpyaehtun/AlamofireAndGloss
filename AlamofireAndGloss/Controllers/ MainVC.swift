//
//  ViewController.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/19/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var companies = [Company] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Alamofire and Gloss"
        
        NetworkingService.networkCall.getCompanies { (companies) in
            self.companies = companies
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "CompanyDetail",
        let companyDetailVC = segue.destination as? CompanyDetailVC,
            let company = sender as AnyObject as? Company else{return}
        companyDetailVC.company = company
    }
}

extension MainVC : buttonDelegate
{
    func didViewLogoTapped(id: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "viewLogo") as! ViewLogoVC
        vc.id = id
        print(id)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func didDetailTapped(company: Company) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "data") as! CompanyDataVC
        vc.company = company
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension MainVC : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        cell.setup(company:  companies[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}

extension MainVC : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderTableViewCell
        cell.setUp()
        return cell.contentView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "CompanyDetail", sender: companies[indexPath.row])
    }
}
