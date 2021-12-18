//
//  Category.swift
//  shopApp
//
//  Created by Alaa Naif on 02/05/1443 AH.
//

import Foundation
import UIKit
struct Category {
    let image : UIImage
    let name : String
}

let categories = [
    Category(image: UIImage(named: "tea")!, name: "شاي"),
    Category(image: UIImage(named: "coffee")!, name: "قهوة"),
    Category(image: UIImage(named: "nuts")!, name: "مكسرات"),
    Category(image: UIImage(named: "cookie")!, name: "بسكويت"),
    Category(image: UIImage(named: "chips")!, name: "رقائق بطاطس"),
    Category(image: UIImage(named: "chocolate")!, name: "شوكولاته"),
    Category(image: UIImage(named: "candy")!, name: "حلويات")


    ]
