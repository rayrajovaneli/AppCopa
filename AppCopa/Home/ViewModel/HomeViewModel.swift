//
//  HomeViewModel.swift
//  AppCopa
//
//  Created by user218260 on 9/23/22.
//

import UIKit

extension HomeView{
    @objc func searchTapped(){
        let callSearch = SearchView()
        let navSearch = UINavigationController(rootViewController: callSearch)
        navSearch.modalPresentationStyle = .fullScreen
        present(navSearch, animated: false)
    }
}
