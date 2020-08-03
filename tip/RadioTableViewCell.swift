//
//  RadioTableViewCell.swift
//  tip
//
//  Created by Esther Max-Onakpoya on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class RadioTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var value: UISwitch!
    @IBAction func valueDidChange(_ sender: UISwitch) {
        ScrollViewController().roundMode = value.isOn
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
