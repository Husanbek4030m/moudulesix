//
//  ProfileTableViewCell.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet var avatar: UIImageView!
    @IBOutlet var fullname: UILabel!
    @IBOutlet var subTitle: UILabel!
    @IBOutlet var descriptions: UILabel!
    @IBOutlet var contentImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
