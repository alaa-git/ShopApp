//
//  ProductCell.swift
//  shopApp
//
//  Created by Alaa Naif on 11/05/1443 AH.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productExpDate: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func setupCell(image:String , name:String, description: String , expDate:String, price: String){
        productImage.image = UIImage(named: image)
        productName.text = name
        productDescription.text = description
        productExpDate.text = expDate
        productPrice.text = "\(price) ريال "
    }
}
