//
//  CityCellTAbleViewCell.swift
//  iOSClaswork8
//
//  Created by Wrood Alrashidi on 08/07/2020.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit

class CityCellTAbleViewCell: UITableViewCell {

  
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weather: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
