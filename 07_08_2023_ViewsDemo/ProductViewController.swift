//
//  ProductViewController.swift
//  07_08_2023_ViewsDemo
//
//  Created by Vishal Jagtap on 18/09/23.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var productTableView: UITableView!
    
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
        let uiNib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        self.productTableView.register(
            uiNib,
            forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productTableViewCell  = self.productTableView.dequeueReusableCell(
            withIdentifier: "ProductTableViewCell",
            for: indexPath) as! ProductTableViewCell
        
        productTableViewCell.productImageView.image = UIImage(named: "nature_image2")
        productTableViewCell.productTitle.text = "Microwave"
        productTableViewCell.productDescription.text = "To cook food"
        productTableViewCell.productPrice.text = String(20000.00)
        
        return productTableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160.0
    }
    
    
}
