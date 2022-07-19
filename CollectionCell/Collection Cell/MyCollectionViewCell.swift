//
//  MyCollectionViewCell.swift
//  CollectionCell
//
//  Created by Yang Chi on 2022/7/19.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with coffee: Coffee) {
        self.myLabel.text = coffee.text
        self.myImageView.image = UIImage(named: coffee.imageName)
    }

}
