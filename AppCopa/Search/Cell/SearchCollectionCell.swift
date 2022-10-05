//
//  SearchCollectionCell.swift
//  AppCopa
//
//  Created by user218260 on 9/30/22.
//

import UIKit

class SearchCollectionCell: UICollectionViewCell {
    
    var searchView = SearchView()
    
    var playerImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        return image
    }()
    
    let checkingImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "checkmark.circle")
        image.tintColor = .white
        image.isHidden = true
        return image
    }()
    
    let highlightIndicator: UIView = {
        let view = UIView()
        view.layer.opacity = 0.5
        view.backgroundColor = .darkGray
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override var isHighlighted: Bool {
        didSet{
            highlightIndicator.isHidden = !isHighlighted
        }
    }
    
    override var isSelected: Bool {
        didSet{
            highlightIndicator.isHidden = !isSelected
            checkingImage.isHidden = !isSelected
        }
    }
    
    override init(frame: CGRect) {
        super .init(frame: .zero)
        contentView.addSubview(playerImage)
        contentView.addSubview(highlightIndicator)
        contentView.addSubview(checkingImage)
        addingConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func addingConstraints(){
        playerImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        playerImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        playerImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        playerImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        playerImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        playerImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        checkingImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        checkingImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        checkingImage.bottomAnchor.constraint(equalTo: playerImage.bottomAnchor, constant: -5).isActive = true
        checkingImage.trailingAnchor.constraint(equalTo: playerImage.trailingAnchor, constant: -5).isActive = true
        
        highlightIndicator.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        highlightIndicator.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        highlightIndicator.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        highlightIndicator.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        highlightIndicator.heightAnchor.constraint(equalToConstant: 70).isActive = true
        highlightIndicator.widthAnchor.constraint(equalToConstant: 70).isActive = true
    }

}
