//
//  ShopTableViewCell.swift
//  Poogle
//
//  Created by Mahmoud Abdellatief on 18/09/2019.
//  Copyright © 2019 Mahmoud Abdellatief. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colView.dequeueReusableCell(withReuseIdentifier: "shopCollectionCell", for: indexPath)
        return cell
    }
    
    @IBOutlet weak var sectionTitle: UILabel!
    
    
    @IBOutlet weak var colView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        colView.dataSource = self
        colView.delegate = self
        colView.register(UINib(nibName: "ShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "shopCollectionCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
