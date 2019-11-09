//
//  ShopCollectionViewCell.swift
//  Poogle
//
//  Created by Mahmoud Abdellatief on 15/09/2019.
//  Copyright © 2019 Mahmoud Abdellatief. All rights reserved.
//

import UIKit

class ShopCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productDesc: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
