//
//  ShopViewController.swift
//  Poogle
//
//  Created by Mahmoud Abdellatief on 15/09/2019.
//  Copyright © 2019 Mahmoud Abdellatief. All rights reserved.
//

import UIKit


class ShopViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // required function for uitableview, to declare number of cells to return
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
   // another required function for uitableview to declare info to load in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // declaring which cell to return
        let cell = tableView.dequeueReusableCell(withIdentifier: "shopTableCell", for: indexPath) as! ShopTableViewCell
        
        switch indexPath.row {
        case 0:
        
            cell.sectionTitle.text = " Shoes"
            
        case 1:
            cell.sectionTitle.text = " T-shirts"
        case 2:
            cell.sectionTitle.text = " Jeans"
        case 3:
        cell.sectionTitle.text = " Watches"
        default:
            cell.sectionTitle.text = " "
            
            
        }
        return cell
    }
    
    
    
    @IBOutlet weak var shopTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // set background image for the tableview
        let backgroundImage = UIImage(named: "backgrounds-2")
        let imageView = UIImageView(image: backgroundImage)
        imageView.contentMode = .scaleAspectFit
        shopTable.backgroundView = imageView
        
        // setting self as delegate and datasource for table view
        shopTable.delegate = self
        shopTable.dataSource = self
        // register the custom cell we designed for the shop table view
        shopTable.register(UINib(nibName: "ShopTableViewCell", bundle: nil), forCellReuseIdentifier: "shopTableCell")
        // to make sure not to show any additional unwanted empty cells in the table
        shopTable.tableFooterView = UIView(frame: CGRect.zero)
         // set the rowHeight for each row in table
        shopTable.rowHeight = 185

    }


}
