//
//  StatesDetailTableViewCell.swift
//  State
//
//  Created by DroBlack on 2/15/18.
//  Copyright © 2018 DroBlack. All rights reserved.
//

import UIKit

class StatesDetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var keyLabel: UILabel!
    
    @IBOutlet weak var valueLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
