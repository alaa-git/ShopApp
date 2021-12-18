//
//  CategoryCell.swift
//  shopApp
//
//  Created by Alaa Naif on 02/05/1443 AH.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    func setupCell(with category : Category){
        categoryImage.image = category.image
        categoryName.text = category.name
        
        
    }
}
