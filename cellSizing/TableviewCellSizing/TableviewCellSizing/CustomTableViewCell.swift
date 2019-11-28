//
//  CustomTableViewCell.swift
//  TableviewCellSizing
//
//  Created by Apple on 11/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {


    @IBOutlet weak var noidung: UILabel!
    @IBOutlet weak var tavgia: UILabel!
    @IBOutlet weak var imageDisplay: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
