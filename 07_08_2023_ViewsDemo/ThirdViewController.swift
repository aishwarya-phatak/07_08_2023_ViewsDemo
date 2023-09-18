//
//  ThirdViewController.swift
//  07_08_2023_ViewsDemo
//
//  Created by Vishal Jagtap on 14/09/23.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "nature_image3")
    }
}
