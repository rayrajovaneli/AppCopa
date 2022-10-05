//
//  PictureDetailsView.swift
//  AppCopa
//
//  Created by user218260 on 10/4/22.
//

import UIKit

class PictureDetailsView: UIViewController {
    
    let backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.imageView?.tintColor = .white
        button.clipsToBounds = false
        button.layer.cornerRadius = 9
        return button
    }()
    
    let searchLabel: UILabel = {
        let label = UILabel()
        label.text = "Figurinha"
        label.textColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Mande uma mensagem para solicitar a troca"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Medium", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        addConstraints()
    }
    
    func addSubview(){
        view.addSubview(backButton)
        view.addSubview(searchLabel)
        view.addSubview(subtitleLabel)
    }
    
    func addConstraints(){
        backButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        
        searchLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        searchLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        
        subtitleLabel.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 6).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 29).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60).isActive = true
    }
}
