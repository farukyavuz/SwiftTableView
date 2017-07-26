//
//  ProductTableViewCell.swift
//  SwiftTableView
//
//  Created by Faruk Yavuz on 26/07/2017.
//  Copyright © 2017 Faruk Yavuz. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productValue: UILabel!
    
    @IBOutlet weak var productStock: UILabel!
    
    @IBOutlet weak var remainTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
