

import UIKit

class HeaderForCompanyTableCell: UITableViewCell {

    @IBOutlet weak var jobIDLabel: UILabel!
    @IBOutlet weak var jobID: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUp() {
        jobIDLabel.text = "ID"
        jobID.text = "Priority"
    }

}
