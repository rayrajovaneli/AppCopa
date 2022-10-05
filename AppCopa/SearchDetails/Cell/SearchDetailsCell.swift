//
//  SearchDetailsCell.swift
//  AppCopa
//
//  Created by user218260 on 10/4/22.
//

import UIKit

class SearchDetailCell: UICollectionViewCell{
    
    let pictureImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let pictureStateLabel: UILabel = {
        let label = UILabel()
        label.text = "Estado da figurinha"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let pictureStateLabel2: UILabel = {
        let label = UILabel()
        label.text = "Ótimo!"
        label.textColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1)
        contentView.addSubview(pictureImage)
        contentView.addSubview(pictureStateLabel)
        contentView.addSubview(pictureStateLabel2)
        addingConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addingConstraints(){
        pictureImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        pictureImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        pictureImage.heightAnchor.constraint(equalToConstant: 91).isActive = true
        pictureImage.widthAnchor.constraint(equalToConstant: 79).isActive = true
        
        pictureStateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        pictureStateLabel.leadingAnchor.constraint(equalTo: pictureImage.trailingAnchor, constant: 20).isActive = true
        
        pictureStateLabel2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 45).isActive = true
        pictureStateLabel2.leadingAnchor.constraint(equalTo: pictureImage.trailingAnchor, constant: 20).isActive = true
    }
}
