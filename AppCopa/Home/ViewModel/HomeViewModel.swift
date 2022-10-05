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
        callSearch.modalPresentationStyle = .fullScreen
        present(callSearch, animated: false)
    }
}
