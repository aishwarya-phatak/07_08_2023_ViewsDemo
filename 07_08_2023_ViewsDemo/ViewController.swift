//
//  ViewController.swift
//  07_08_2023_ViewsDemo
//
//  Created by Vishal Jagtap on 13/09/23.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var productTableView: UITableView!
    
    var foodItems : [String] = ["Modak", "Laddu", "Samosa","Barfi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       print(foodItems.count)
        
        
        
        
    }
}
