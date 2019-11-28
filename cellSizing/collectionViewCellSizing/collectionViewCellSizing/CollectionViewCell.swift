//
//  CollectionViewCell.swift
//  collectionViewCellSizing
//
//  Created by Apple on 11/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var headerlabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        let screenWidth = UIScreen.main.bounds.size.width
        widthAnchor.constraint(equalToConstant: screenWidth - 2 * 12).isActive = true
    }

}
