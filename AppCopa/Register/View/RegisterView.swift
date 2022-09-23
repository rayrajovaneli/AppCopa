//
//  RegisterView.swift
//  AppCopa
//
//  Created by user218260 on 9/21/22.
//

import UIKit

class RegisterView: UIViewController {
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Encontre e troque figurinhas da Copa do Mundo 2022 !"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont(name: "Inter-Semibold", size: 20)
        label.textColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("Login", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "Bold", size: 16)
        button.clipsToBounds = false
        button.layer.cornerRadius = 8
        return button
    }()
    
    let registerButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        button.setTitle("Criar Conta", for: .normal)
        button.titleLabel?.textColor = .darkText
        button.titleLabel?.font = UIFont(name: "Bold", size: 16)
        button.clipsToBounds = false
        button.layer.cornerRadius = 8
        return button
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
        textField.clipsToBounds = false
        textField.layer.cornerRadius = 8
        textField.isHidden = true
        return textField
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    lazy var emailStackView: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField])
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.spacing = 6
            stackView.axis = .vertical
            stackView.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
            stackView.layer.borderColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1).cgColor
            stackView.layer.borderWidth = 1
            stackView.layer.cornerRadius = 8
            stackView.isLayoutMarginsRelativeArrangement = true
            return stackView
        }()

    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
        textField.clipsToBounds = false
        textField.layer.cornerRadius = 8
        textField.isSecureTextEntry = true
        textField.isHidden = true
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    lazy var passwordStackView: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField])
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.spacing = 6
            stackView.axis = .vertical
            stackView.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
            stackView.layer.borderColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1).cgColor
            stackView.layer.borderWidth = 1
            stackView.layer.cornerRadius = 8
            stackView.isLayoutMarginsRelativeArrangement = true
            return stackView
        }()

    let cepTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
        textField.clipsToBounds = false
        textField.layer.cornerRadius = 8
        textField.isHidden = true
        return textField
    }()
    
    let cepLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CEP"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    lazy var cepStackView: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [cepLabel, cepTextField])
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.spacing = 6
            stackView.axis = .vertical
            stackView.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
            stackView.layer.borderColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1).cgColor
            stackView.layer.borderWidth = 1
            stackView.layer.cornerRadius = 8
            stackView.isLayoutMarginsRelativeArrangement = true
            return stackView
        }()

    let infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Não revelamos sua localização para outras pessoas!"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Medium", size: 14)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.textColor = .white
        button.clipsToBounds = false
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let warningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "App não oficial da Copa."
        label.textColor = UIColor(red: 0.621, green: 0.621, blue: 0.621, alpha: 1)
        label.font = UIFont(name: "Inter-Regular", size: 14)
        label.textAlignment = .center
        return label
    }()
    
    let headerImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "headerPlayers")
        return image
    }()
    
    let seePasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        button.imageView?.tintColor = .darkGray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        addSubviews()
        addConstraints()
        addTargets()
        loginButton.addTarget(nil, action: #selector(loginTapped), for: .touchUpInside)
        enterButton.addTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
        seePasswordButton.addTarget(nil, action: #selector(seePassword), for: .touchUpInside)
    }
    
    func addSubviews(){
        self.view.addSubview(titleLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(registerButton)
        self.view.addSubview(emailStackView)
        self.view.addSubview(passwordStackView)
        self.view.addSubview(cepStackView)
        self.view.addSubview(infoLabel)
        self.view.addSubview(enterButton)
        self.view.addSubview(warningLabel)
        self.view.addSubview(headerImage)
        self.view.addSubview(seePasswordButton)
    }
    
    func addConstraints(){
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -47).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 29).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 53).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 162).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: loginButton.trailingAnchor).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 53).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 162).isActive = true
        
        emailStackView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 27).isActive = true
        emailStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        emailStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        emailStackView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        emailLabel.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor, constant: 10).isActive = true
        
        passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 27).isActive = true
        passwordStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        passwordStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        passwordStackView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        passwordLabel.leadingAnchor.constraint(equalTo: passwordStackView.leadingAnchor, constant: 10).isActive = true
        
        seePasswordButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        seePasswordButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        seePasswordButton.trailingAnchor.constraint(equalTo: passwordStackView.trailingAnchor, constant: -10).isActive = true
        seePasswordButton.topAnchor.constraint(equalTo: passwordStackView.topAnchor, constant: 10).isActive = true
        
        cepStackView.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 27).isActive = true
        cepStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        cepStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        cepStackView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        cepLabel.leadingAnchor.constraint(equalTo: cepStackView.leadingAnchor, constant: 10).isActive = true
        
        infoLabel.topAnchor.constraint(equalTo: cepStackView.bottomAnchor, constant: 10).isActive = true
        infoLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 251).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 86).isActive = true
        
        enterButton.heightAnchor.constraint(equalToConstant: 58).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        enterButton.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10).isActive = true
        
        warningLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        warningLabel.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 10).isActive = true
        
        headerImage.topAnchor.constraint(equalTo: warningLabel.bottomAnchor, constant: 10).isActive = true
        headerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        headerImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

