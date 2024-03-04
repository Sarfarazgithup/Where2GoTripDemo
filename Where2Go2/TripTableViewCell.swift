//
//  TripTableViewCell.swift
//  Where2Go2
//
//  Created by Sarfaraz Ali on 06/11/23.
//

import UIKit

class TripTableViewCell: UITableViewCell{
   
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    let productTypeName:[String] = ["Baku trip","Honeymoon trip","Romantic trip","road-trip","Honeymoon","Baku trip","Honeymoon trip","Romantic trip","road-trip","Honeymoon"]
    let productImage:[String] = ["Baku trip","Honymoon trip","Romantic trip","road-trip","Honymoon trip","Baku trip","Honymoon trip","Romantic trip","road-trip","Honymoon trip"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        CollectionView.delegate = self
        CollectionView.dataSource = self
        CollectionView.register(UINib(nibName: "myCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCollectionViewCell")
    }

  
}

extension TripTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productTypeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell
        cell.myImage.image = UIImage(named: productImage[indexPath.row])
        cell.myLable.text = productTypeName[indexPath.row]
        
        cell.layer.cornerRadius = 16
        cell.myImage.layer.cornerRadius = 8
     
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.size.width - 10)/2
            return CGSize(width: width, height: 60)
        }
}
