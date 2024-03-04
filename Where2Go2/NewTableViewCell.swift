//
//  NewTableViewCell.swift
//  Where2Go2
//
//  Created by Sarfaraz Ali on 06/11/23.
//

import UIKit

class NewTableViewCell: UITableViewCell{
    
    
    let productTypeName:[String] = ["Baku trip","Honeymoon trip","Romantic trip","road-trip","Honeymoon","Baku trip","Honeymoon trip","Romantic trip","road-trip","Honeymoon"]
    let productImage:[String] = ["Baku trip","Honymoon trip","Romantic trip","road-trip","Honymoon trip","Baku trip","Honymoon trip","Romantic trip","road-trip","Honymoon trip"]

    @IBOutlet weak var newCollectionview: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        newCollectionview.dataSource = self
        newCollectionview.delegate = self
        newCollectionview.register(UINib(nibName: "NewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewCollectionViewCell")
       
    }

    
    
}
extension NewTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productTypeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newCollectionview.dequeueReusableCell(withReuseIdentifier: "NewCollectionViewCell", for: indexPath) as! NewCollectionViewCell
        cell.newImage.image = UIImage(named: productImage[indexPath.row])
        cell.newLable.text = productTypeName[indexPath.row]
        
        cell.layer.cornerRadius = 16
        cell.newImage.layer.cornerRadius = 16
     
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.size.width - 32)/2
            return CGSize(width: width, height: 200)
        }
}


