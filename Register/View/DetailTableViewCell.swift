//
//  DetailTableViewCell.swift
//  Register
//
//  Created by dohien on 7/3/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    @IBOutlet weak var cityCodeLabel: UILabel!
    @IBOutlet weak var districtCodeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
