//
//  SearchView.swift
//  AppCopa
//
//  Created by user218260 on 9/26/22.
//

import UIKit

class SearchView: UIViewController{
    
    enum Mode{
        case view
        case select
    }
    
    var mMode: Mode = .view {
        didSet {
            switch mMode {
            case .view:
                collectionView.allowsMultipleSelection = false
            case .select:
                collectionView.allowsMultipleSelection = true
            }
        }
    }
    
    
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
        label.text = "Selecione uma ou mais"
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Medium", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .prominent
        searchBar.placeholder = "Digite a seleção desejada"
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        return searchBar
    }()
    
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 90, height: 110)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 5
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.dataSource = self
        collection.delegate = self
        collection.register(SearchCollectionCell.self, forCellWithReuseIdentifier: "Cell")
        collection.showsHorizontalScrollIndicator = false
        collection.backgroundColor = .white
        return collection
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buscar", for: .normal)
        button.titleLabel?.font = UIFont(name: "Ubuntu-Medium", size: 24)
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        button.clipsToBounds = false
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var dictionarySelectedIndexPath: [IndexPath: Bool] = [:]
        
    var data = ["Brasil", "França", "Inglaterra", "Argentina", "Espanha"]
    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            backButton.addTarget(nil, action: #selector(backButtonTapped), for: .touchUpInside)
            searchBar.searchTextField.addTarget(nil, action: #selector(editingSearchBar), for: .editingChanged)
        searchButton.addTarget(nil, action: #selector(searchingPictures), for: .touchUpInside)
            searchBar.delegate = self
            addSubview()
            addConstraints()
            mMode = mMode == .view ? .select : .view
        }
    
       
       func addSubview(){
           view.addSubview(backButton)
           view.addSubview(searchLabel)
           view.addSubview(subtitleLabel)
           view.addSubview(searchBar)
           view.addSubview(collectionView)
           view.addSubview(searchButton)
       }
       
       func addConstraints(){
           backButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
           backButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
           backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
           backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
           
           searchLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
           searchLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
           
           subtitleLabel.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 6).isActive = true
           subtitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
           
           searchBar.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30).isActive = true
           searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 29).isActive = true
           searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -29).isActive = true
           
           collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 26).isActive = true
           collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
           collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
           collectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
           
           searchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55).isActive = true
           searchButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 29).isActive = true
           searchButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -29).isActive = true
           searchButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
           
       }
       
    @objc func searchingPictures(){
        let callDetailSearch = SearchDetailsView()
        callDetailSearch.modalPresentationStyle = .fullScreen
        present(callDetailSearch, animated: false)
    }
       
       @objc func editingSearchBar(){
           let indexPath = IndexPath()
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? SearchCollectionCell
           
           if searchBar.text == data.first {
               cell?.playerImage.backgroundColor = .green
           } else if searchBar.text == data[3]{
               collectionView.backgroundColor = .blue
           } else if searchBar.text == data.last{
               collectionView.backgroundColor = .yellow
           } else {
               collectionView.backgroundColor = .white
           }
           collectionView.reloadData()
           
       }
}

extension SearchView: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        19
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? SearchCollectionCell
        
        
        return cell ?? UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch mMode{
        case .view:
            let item = [indexPath.item]
        case .select:
            dictionarySelectedIndexPath[indexPath] = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if mMode == .select{
            dictionarySelectedIndexPath[indexPath] = false
        }
    }
}
