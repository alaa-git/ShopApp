//
//  ViewController.swift
//  shopApp
//
//  Created by Alaa Naif on 02/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    var selectedCategory : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
    }

}

//MARK: - UICollectionViewDataSource
extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        cell.setupCell(with :categories[indexPath.row])
        cell.layer.cornerRadius = 5
        return cell
        
    }
    
    
}
//MARK: - UICollectionViewDelegate
extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
            case 0 : selectedCategory = "شاي"
            case 1 : selectedCategory = "قهوة"
            case 2 :selectedCategory = "مكسرات"
            case 3 :selectedCategory = "بسكويت"
            case 4: selectedCategory = "رقائق بطاطس"
            case 5 :selectedCategory = "شوكولاته"
            case 6: selectedCategory = "حلويات"

        default:
            selectedCategory = nil
        }
    
       performSegue(withIdentifier: "showProducts", sender: self)


    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ProductsViewController
        if let indexPath = categoryCollectionView.indexPathsForSelectedItems {
            destinationVC.category = selectedCategory
        }
    }
    }


//MARK: - UICollectionViewDelegateFlowLayout
extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width * 0.48 , height: collectionView.bounds.width * 0.48 )
    }
    
}
