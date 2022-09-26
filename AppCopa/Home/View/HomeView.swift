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
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem vindo"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "KoHo-Bold", size: 24)
        return label
    }()
    
    let coupImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "coup")
        return image
    }()
    
    let flagImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "brazilflag")
        return image
    }()
    
    let coupLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Copa"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "KoHo-Bold", size: 24)
        return label
    }()
    
    let yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2022"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "KoHo-Bold", size: 32)
        return label
    }()
    
    let searchView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        view.clipsToBounds = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    let anounceView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = false
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1).cgColor
        return view
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Buscar\nfigurinhas", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "KoHo-Bold", size: 20)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.lineBreakMode = .byWordWrapping
        return button
    }()
    
    let imageSearchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.down.forward.and.arrow.up.backward"), for: .normal)
        button.imageView?.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let anounceButton: UIButton = {
        let button = UIButton()
        button.setTitle("Anunciar\nfigurinhas", for: .normal)
        button.setTitleColor(UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "KoHo-Bold", size: 20)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let imageAnounceButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "square.grid.2x2.fill"), for: .normal)
        button.imageView?.tintColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        addConstraints()
        searchButton.addTarget(nil, action: #selector(searchTapped), for: .touchUpInside)
        imageSearchButton.addTarget(nil, action: #selector(searchTapped), for: .touchUpInside)
    }
    
    func addSubview(){
        self.view.addSubview(profileButton)
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(coupImage)
        self.view.addSubview(flagImage)
        self.view.addSubview(coupLabel)
        self.view.addSubview(yearLabel)
        self.view.addSubview(searchView)
        self.view.addSubview(anounceView)
        self.view.addSubview(searchButton)
        self.view.addSubview(imageSearchButton)
        self.view.addSubview(anounceButton)
        self.view.addSubview(imageAnounceButton)
    }
    
    func addConstraints(){
        profileButton.heightAnchor.constraint(equalToConstant: 51).isActive = true
        profileButton.widthAnchor.constraint(equalToConstant: 51).isActive = true
        profileButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        profileButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        
        welcomeLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90).isActive = true
        
        coupImage.topAnchor.constraint(equalTo: profileButton.bottomAnchor, constant: 57).isActive = true
        coupImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 48).isActive = true
        coupImage.widthAnchor.constraint(equalToConstant: 59).isActive = true
        coupImage.heightAnchor.constraint(equalToConstant: 52).isActive = true

        flagImage.topAnchor.constraint(equalTo: profileButton.bottomAnchor, constant: 69).isActive = true
        flagImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -55).isActive = true
        flagImage.widthAnchor.constraint(equalToConstant: 48).isActive = true
        flagImage.heightAnchor.constraint(equalToConstant: 29).isActive = true
        
        coupLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 14).isActive = true
        coupLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        yearLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40).isActive = true
        yearLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        searchView.topAnchor.constraint(equalTo: coupImage.bottomAnchor, constant: 51).isActive = true
        searchView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        searchView.widthAnchor.constraint(equalToConstant: 152).isActive = true
        searchView.heightAnchor.constraint(equalToConstant: 273).isActive = true
        
        anounceView.topAnchor.constraint(equalTo: coupImage.bottomAnchor, constant: 51).isActive = true
        anounceView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -27).isActive = true
        anounceView.widthAnchor.constraint(equalToConstant: 152).isActive = true
        anounceView.heightAnchor.constraint(equalToConstant: 273).isActive = true
        
        searchButton.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 19).isActive = true
        searchButton.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -19).isActive = true
        searchButton.topAnchor.constraint(equalTo: searchView.topAnchor).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 273).isActive = true
        
        imageSearchButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageSearchButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageSearchButton.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 63.20).isActive = true
        imageSearchButton.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 218).isActive = true
        
        anounceButton.leadingAnchor.constraint(equalTo: anounceView.leadingAnchor, constant: 19).isActive = true
        anounceButton.trailingAnchor.constraint(equalTo: anounceView.trailingAnchor, constant: -19).isActive = true
        anounceButton.topAnchor.constraint(equalTo: anounceView.topAnchor).isActive = true
        anounceButton.heightAnchor.constraint(equalToConstant: 273).isActive = true
        
        imageAnounceButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageAnounceButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageAnounceButton.leadingAnchor.constraint(equalTo: anounceView.leadingAnchor, constant: 63.20).isActive = true
        imageAnounceButton.topAnchor.constraint(equalTo: anounceView.topAnchor, constant: 218).isActive = true

    }
}
