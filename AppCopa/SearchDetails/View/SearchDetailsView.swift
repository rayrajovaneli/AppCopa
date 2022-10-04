//
//  SearchDetailsView.swift
//  AppCopa
//
//  Created by user218260 on 10/3/22.
//

import UIKit

class SearchDetailsView: UIViewController {
    
    let searchLabel: UILabel = {
        let label = UILabel()
        label.text = "Buscar figurinhas"
        label.textColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        label.font = UIFont(name: "Ubuntu-Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }
    
    func addSubviews(){
        view.addSubview(searchLabel)
    }
}
