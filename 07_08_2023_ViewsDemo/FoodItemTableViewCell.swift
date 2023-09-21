//
//  FoodItemTableViewCell.swift
//  07_08_2023_ViewsDemo
//
//  Created by Vishal Jagtap on 21/09/23.
//

import UIKit

class FoodItemTableViewCell: UITableViewCell {
    @IBOutlet weak var foodItemImage: UIImageView!
    @IBOutlet weak var foodItemTitle: UILabel!
    @IBOutlet weak var foodItemDescription: UILabel!
    @IBOutlet weak var foodItemPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
