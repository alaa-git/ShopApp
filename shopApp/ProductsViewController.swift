//
//  ProductsViewController.swift
//  shopApp
//
//  Created by Alaa Naif on 10/05/1443 AH.
//

import UIKit

class ProductsViewController: UIViewController {
    var category : String?
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = category
        productsCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
}
extension ProductsViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCell
        cell.setupCell(image: "chocolate", name: "شوكولاته", description: "شوكولاته بالحليب الطازج", expDate: "12/2023", price: "5.0")
        cell.layer.cornerRadius = 5
        return cell
    }
    
    }

    
    extension ProductsViewController : UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.bounds.width  , height: collectionView.bounds.width * 0.25 )
        }
    }

