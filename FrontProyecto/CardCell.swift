//
//  CardCell.swift
//  FrontProyectoBAMEX
//
//  Created by Max Villegas on 04/11/22.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    ///Set up the cell
    func configure(picture: UIImage, title: String, description: String){
        pictureView.image = picture
        titleLabel.text = title
        descriptionLabel.text = description
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 2.0

    }
    
}
