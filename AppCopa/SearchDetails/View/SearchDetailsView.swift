//
//  SearchDetailsView.swift
//  AppCopa
//
//  Created by user218260 on 10/3/22.
//

import UIKit

class SearchDetailsView: UIViewController {
    
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
        label.text = "Buscar figurinhas"
        label.textColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Encontramos X figurinhas perto de você!"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Medium", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 300, height: 91)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 5
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.dataSource = self
        collection.delegate = self
        collection.register(SearchDetailCell.self, forCellWithReuseIdentifier: "Cell")
        collection.showsHorizontalScrollIndicator = false
        collection.backgroundColor = .white
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        addConstraints()
        backButton.addTarget(nil, action: #selector(backToSearch), for: .touchUpInside)
    }
    
    @objc func backToSearch(){
        let callSearch = SearchView()
        callSearch.modalPresentationStyle = .fullScreen
        present(callSearch, animated: false)
    }
    
    func addSubviews(){
        view.addSubview(backButton)
        view.addSubview(searchLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(collectionView)
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
        
        collectionView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 20).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -130).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }
}

extension SearchDetailsView: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? SearchDetailCell
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let callPictureDetails = PictureDetailsView()
        callPictureDetails.modalPresentationStyle = .fullScreen
        present(callPictureDetails, animated: false)
    }
    
}
