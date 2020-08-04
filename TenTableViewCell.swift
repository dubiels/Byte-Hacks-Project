//
//  TenTableViewCell.swift
//  ImmiRent
//
//  Created by Lola on 8/1/20.
//  Copyright © 2020 Karolina Dubiel. All rights reserved.
//

import UIKit

class TenTableViewCell: UITableViewCell
{
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var tag1: UIImageView!
    @IBOutlet var tag2: UIImageView!
    @IBOutlet var thumbnail: UIImageView!
    

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
