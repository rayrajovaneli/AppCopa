//
//  HomeView.swift
//  AppCopa
//
//  Created by user218260 on 9/23/22.
//

import UIKit

class HomeView: UIViewController{
    
    let profileButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        button.setImage(UIImage(systemName: "person"), for: .normal)
        button.imageView?.tintColor = .white
        button.clipsToBounds = false
        button.layer.cornerRadius = 14
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        addConstraints()
    }
    
    func addSubview(){
        self.view.addSubview(profileButton)
    }
    
    func addConstraints(){
        profileButton.heightAnchor.constraint(equalToConstant: 51).isActive = true
        profileButton.widthAnchor.constraint(equalToConstant: 51).isActive = true
        profileButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        profileButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
    }
}
