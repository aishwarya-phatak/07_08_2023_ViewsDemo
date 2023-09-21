//
//  ProductViewController.swift
//  07_08_2023_ViewsDemo
//
//  Created by Vishal Jagtap on 18/09/23.
//

import UIKit

class ProductViewController: UIViewController {
    @IBOutlet weak var productTableView: UITableView!
    var foodItemsImages = [UIImage(named: "1.jpeg"),UIImage(named: "2.jpeg"),UIImage(named: "3.jpeg") ]
    var foodItemsTitle = ["Vadapav","Samosa","Pavbhaji","Poha","Upma"]
    var foodItemsDescription = ["Delicious","Spicy","Tasty","Breakfast","Breakfast"]
    var foodItemsPrice = ["20.0","20.0","100.0","20.0","20.0"]
    
    var prTitle = ["Mixer","Gas Stove","Microwave"]
    var prDescription = ["Sumit","Faber","LG"]
    var prPrice = [3000.0,8000.0,21000.0]
    
    private let productCellReuseIdentifier : String = "ProductTableViewCell"
    private let foodItemTableViewCellIdentifier : String = "FoodItemTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        registerProductTVCellWithTableView(identifier: productCellReuseIdentifier)
        registerProductTVCellWithTableView(identifier: foodItemTableViewCellIdentifier )
    }
    
    func initializeTableView(){
        productTableView.delegate = self
        productTableView.dataSource = self
    }
    
    func registerProductTVCellWithTableView(identifier : String){
        let uiNib = UINib(nibName: identifier, bundle: nil)
        self.productTableView.register(
            uiNib,
            forCellReuseIdentifier: identifier)
    }
}

//MARK : ProductTableViewController conforms to UITableViewDataSource

extension ProductViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section % 2 == 0{
            return prTitle.count
        } else {
            return foodItemsTitle.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "---Section---"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section % 2 == 0{
            let productTableViewCell  = self.productTableView.dequeueReusableCell(
                withIdentifier: productCellReuseIdentifier,
                for: indexPath) as! ProductTableViewCell
            
            productTableViewCell.productImageView.image = UIImage(named: "nature_image2")
            productTableViewCell.productTitle.text = prTitle[indexPath.row] + "\(indexPath.row)" + "\(indexPath.section)"
            productTableViewCell.productDescription.text = prDescription[indexPath.row]
            productTableViewCell.productPrice.text = String(prPrice[indexPath.row])
            
            return productTableViewCell
            
        } else {
            let foodItemTableViewCell = self.productTableView.dequeueReusableCell(withIdentifier: foodItemTableViewCellIdentifier, for: indexPath) as! FoodItemTableViewCell
            foodItemTableViewCell.foodItemTitle.text = foodItemsTitle[indexPath.row]
            foodItemTableViewCell.foodItemDescription.text = foodItemsDescription[indexPath.row]
            foodItemTableViewCell.foodItemPrice.text = String(foodItemsPrice[indexPath.row])
            foodItemTableViewCell.foodItemImage.image = UIImage(named: "nature_image2")
            return foodItemTableViewCell
        }
    }
}

extension ProductViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160.0
    }
}
