//
//  SearchViewModel.swift
//  AppCopa
//
//  Created by user218260 on 9/26/22.
//

import Foundation

extension SearchView{
    @objc func backButtonTapped(){
        let callHome = TabBar()
        callHome.modalPresentationStyle = .fullScreen
        present(callHome, animated: false)
    }
}
