//
//  LoginViewModel.swift
//  AppCopa
//
//  Created by user218260 on 9/16/22.
//

import UIKit

extension LoginView: UITextFieldDelegate {
    
    func addTargets(){
        let emailStackViewTap = UITapGestureRecognizer(target: self, action: #selector(emailStackViewTapped))
        emailStackView.addGestureRecognizer(emailStackViewTap)
        
        let passwordStackViewTap = UITapGestureRecognizer(target: self, action: #selector(passwordtStackViewTapped))
        passwordStackView.addGestureRecognizer(passwordStackViewTap)
    }
    
    @objc func emailStackViewTapped() {
            emailLabel.font = UIFont(name: "KoHo-Bold", size: 12)
            emailTextField.isHidden = false
            emailTextField.becomeFirstResponder()
        }
    
    @objc func passwordtStackViewTapped() {
            passwordLabel.font = UIFont(name: "KoHo-Bold", size: 12)
            passwordTextField.isHidden = false
            passwordTextField.becomeFirstResponder()
        }
    
    @objc func seePassword(_ sender: UIButton){
        passwordTextField.isSecureTextEntry.toggle()
        
        if passwordTextField.isSecureTextEntry {
            seePasswordButton.setImage(UIImage(systemName: "eye.slash" ), for: .normal)
        } else {
            seePasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }
    
    @objc func enterTapped() {
        let callHome = TabBar()
        callHome.modalPresentationStyle = .fullScreen
        present(callHome, animated: true)
    }
    
    @objc func registerTapped() {
        let callRegister = RegisterView()
        callRegister.modalPresentationStyle = .fullScreen
        present(callRegister, animated: false)
    }
}
