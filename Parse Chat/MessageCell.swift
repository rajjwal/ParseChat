//
//  MessageCell.swift
//  Parse Chat
//
//  Created by Rajjwal Rawal on 2/27/17.
//  Copyright © 2017 Rajjwal Rawal. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    
    @IBOutlet weak var userNameLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
