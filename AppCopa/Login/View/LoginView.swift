//
//  LoginView.swift
//  AppCopa
//
//  Created by Rayra Jovaneli on 9/16/22.
//

import UIKit

class LoginView: UIViewController {
    
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
    
    let flag: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "brazilflag")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let flag2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "brazilflag")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let coup: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "coup")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
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
        button.backgroundColor = .lightGray
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
        return textField
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Bold", size: 15)
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.939, green: 0.939, blue: 0.939, alpha: 1)
        textField.clipsToBounds = false
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Bold", size: 15)
        return label
    }()
    
    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Esqueci minha senha"
        label.textColor = UIColor(red: 0.339, green: 0.339, blue: 0.339, alpha: 1)
        label.font = UIFont(name: "Inter-Medium", size: 16)
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
        image.image = UIImage(named: "header")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        addConstraints()
        
    }
    
    func addSubview(){
        self.view.addSubview(titleLabel)
        self.view.addSubview(flag)
        self.view.addSubview(flag2)
        self.view.addSubview(coup)
        self.view.addSubview(loginButton)
        self.view.addSubview(registerButton)
        self.view.addSubview(emailTextField)
        self.view.addSubview(emailLabel)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(forgotPasswordLabel)
        self.view.addSubview(enterButton)
        self.view.addSubview(warningLabel)
        self.view.addSubview(headerImage)
    }
    
    func addConstraints(){
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -47).isActive = true
        
        flag.heightAnchor.constraint(equalToConstant: 29).isActive = true
        flag.widthAnchor.constraint(equalToConstant: 48).isActive = true
        flag.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 109).isActive = true
        flag.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140).isActive = true
        
        flag2.heightAnchor.constraint(equalToConstant: 29).isActive = true
        flag2.widthAnchor.constraint(equalToConstant: 48).isActive = true
        flag2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -111).isActive = true
        flag2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140).isActive = true
        
        coup.heightAnchor.constraint(equalToConstant: 52).isActive = true
        coup.widthAnchor.constraint(equalToConstant: 59).isActive = true
        coup.leadingAnchor.constraint(equalTo: flag.trailingAnchor).isActive = true
        coup.trailingAnchor.constraint(equalTo: flag2.leadingAnchor).isActive = true
        coup.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 128).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: coup.bottomAnchor, constant: 25).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 29).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 53).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 162).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: coup.bottomAnchor, constant: 25).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: loginButton.trailingAnchor).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 53).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 162).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 27).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 12).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor, constant: 10).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 27).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 12).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 10).isActive = true
        
        forgotPasswordLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        forgotPasswordLabel.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 30).isActive = true
        
        enterButton.heightAnchor.constraint(equalToConstant: 58).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -33).isActive = true
        enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 65).isActive = true
        
        warningLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        warningLabel.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 25).isActive = true
        
        headerImage.topAnchor.constraint(equalTo: warningLabel.bottomAnchor, constant: 15).isActive = true
        headerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        headerImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}

