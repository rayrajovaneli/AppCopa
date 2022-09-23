//
//  RegisterViewModel.swift
//  AppCopa
//
//  Created by user218260 on 9/21/22.
//

import UIKit

extension RegisterView: UITextFieldDelegate{
    
    func addTargets(){
        let emailStackViewTap = UITapGestureRecognizer(target: self, action: #selector(emailStackViewTapped))
        emailStackView.addGestureRecognizer(emailStackViewTap)
        
        let passwordStackViewTap = UITapGestureRecognizer(target: self, action: #selector(passwordtStackViewTapped))
        passwordStackView.addGestureRecognizer(passwordStackViewTap)
        
        let cepStackViewTap = UITapGestureRecognizer(target: self, action: #selector(cepStackViewTapped))
        cepStackView.addGestureRecognizer(cepStackViewTap)
    }

    @objc func enterTapped() {
        if emailTextField.text != "" && passwordTextField.text != "" && cepTextField.text != ""{
            let callLogin = LoginView()
            callLogin.modalPresentationStyle = .fullScreen
            present(callLogin, animated: false)
        } else {
            let alert = UIAlertController(title: "Atenção", message: "Todos os campos devem ser preenchidos!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func loginTapped(){
        let callLogin = LoginView()
        callLogin.modalPresentationStyle = .fullScreen
        present(callLogin, animated: false)
    }
    
    @objc func emailStackViewTapped() {
            emailLabel.font = UIFont(name: "Inter-Bold", size: 10)
            emailTextField.addTarget(self, action: #selector(emailText), for: .editingChanged)
            emailTextField.isHidden = false
            emailTextField.becomeFirstResponder()
        
        }
    
    @objc func passwordtStackViewTapped() {
            passwordLabel.font = UIFont(name: "Inter-Bold", size: 10)
            passwordTextField.addTarget(self, action: #selector(passwordText), for: .editingChanged)
            passwordTextField.isHidden = false
            passwordTextField.becomeFirstResponder()
        }
    
    @objc func cepStackViewTapped() {
            cepLabel.font = UIFont(name: "Inter-Bold", size: 10)
            cepTextField.addTarget(self, action: #selector(cepText), for: .editingChanged)
            cepTextField.isHidden = false
            cepTextField.becomeFirstResponder()
        }
    
    @objc func emailText(_ sender: UITextField){
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]*"
        let emailCaseTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        
        if emailCaseTest.evaluate(with: emailTextField.text!){
                enterButton.addTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
                enterButton.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)

            } else {
                
                enterButton.removeTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
                enterButton.backgroundColor = .gray
            }
        }
    
    @objc func passwordText(_ sender: UITextField){
        if (passwordTextField.text?.count ?? 0) < 4 {
            enterButton.removeTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
            enterButton.backgroundColor = .gray
        } else {
            enterButton.addTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
            enterButton.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        }
    }
    
    @objc func cepText(_ sender: UITextField){
        if (cepTextField.text?.count ?? 0) < 8 {
            enterButton.removeTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
            enterButton.backgroundColor = .gray
        } else {
            enterButton.addTarget(nil, action: #selector(enterTapped), for: .touchUpInside)
            enterButton.backgroundColor = UIColor(red: 0.525, green: 0.031, blue: 0.176, alpha: 1)
        }
    }
}
