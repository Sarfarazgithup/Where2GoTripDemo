//
//  NewCollectionViewCell.swift
//  Where2Go2
//
//  Created by Sarfaraz Ali on 06/11/23.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var newLable: UILabel!
    
    @IBOutlet weak var redImage: UILabel!
    @IBOutlet weak var newImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        newImage.layer.cornerRadius = 16
        redImage.layer.cornerRadius = 16
    }

}
