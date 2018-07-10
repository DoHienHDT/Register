//
//  TableViewCell.swift
//  Register
//
//  Created by dohien on 7/3/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var citylabel: UILabel!
    var cell : UITableViewCell!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
