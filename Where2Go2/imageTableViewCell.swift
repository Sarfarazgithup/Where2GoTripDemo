//
//  imageTableViewCell.swift
//  Where2Go2
//
//  Created by Sarfaraz Ali on 07/11/23.
//

import UIKit

class imageTableViewCell: UITableViewCell {
    @IBOutlet weak var myLastImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myLastImage.layer.cornerRadius = 16
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
