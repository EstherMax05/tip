//
//  SettingsTableViewCell.swift
//  tip
//
//  Created by Esther Max-Onakpoya on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var value: UITextField!
    @IBAction func modifiedValue(_ sender: UITextField) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
