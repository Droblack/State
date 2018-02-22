//
//  StateTableViewCell.swift
//  State
//
//  Created by DroBlack on 2/14/18.
//  Copyright © 2018 DroBlack. All rights reserved.
//

import UIKit

class StateTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageLabel: UIImageView!
    
    
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
