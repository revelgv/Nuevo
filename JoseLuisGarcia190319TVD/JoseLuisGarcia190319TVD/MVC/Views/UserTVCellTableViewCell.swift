//
//  UserTVCellTableViewCell.swift
//  JoseLuisGarcia190319TVD
//
//  Created by Universidad Politecnica de gómez Palacio on 3/21/19.
//  Copyright © 2019 Universidad Politecnica de gómez Palacio. All rights reserved.
//

import UIKit

class UserTVCellTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var lblUsername: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
