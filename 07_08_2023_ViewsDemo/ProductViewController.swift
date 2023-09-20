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
    var foodItemsTitle = ["fd1","fd2","fd3","fd4"]
    var foodItemsDescription = ["fd1","fd2","fd3","fd4"]
    var foodItemsPrice = ["2000.0","3434.23","543.23","5634.4"]
    
    private let productCellReuseIdentifier : String = "ProductTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        registerProductTVCellWithTableView()
    }
    
    func initializeTableView(){
        productTableView.delegate = self
        productTableView.dataSource = self
    }
    
    func registerProductTVCellWithTableView(){
        let uiNib = UINib(nibName: productCellReuseIdentifier, bundle: nil)
        self.productTableView.register(
            uiNib,
            forCellReuseIdentifier: productCellReuseIdentifier)
    }
}

//MARK : ProductTableViewController conforms to UITableViewDataSource

extension ProductViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemsTitle.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "---Section---"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productTableViewCell  = self.productTableView.dequeueReusableCell(
            withIdentifier: productCellReuseIdentifier,
            for: indexPath) as! ProductTableViewCell
        
        productTableViewCell.productImageView.image = UIImage(named: "nature_image2")
        productTableViewCell.productTitle.text = foodItemsTitle[indexPath.row]
        productTableViewCell.productDescription.text = "To cook food"
        productTableViewCell.productPrice.text = String(20000.00)
        
        return productTableViewCell
    }
}

extension ProductViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160.0
    }
}
