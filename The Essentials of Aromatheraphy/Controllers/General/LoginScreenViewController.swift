//
//  LoginScreenViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 17.03.2022.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    /*
     I am going to add 2 views.
     First includes St Micheal Logo
     The second includes username and password text fields, sign in button
     */
    
    private let signInView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let logoImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "mainHeaderImage")
        //   image.clipsToBounds = true
        //      image.contentMode = .scaleAspectFill
        return image
    }()
    
    private let userIDTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.font = .systemFont(ofSize: 18, weight: .regular)
        textField.clearButtonMode = .whileEditing
        textField.returnKeyType = .continue
        return textField
    }()
    
    private let passwordTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = .systemFont(ofSize: 18, weight: .regular)
        textField.clearButtonMode = .whileEditing
        textField.returnKeyType = .done
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let signInButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray4
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Sign In"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(signInView)
        signInView.addSubview(logoImage)
        signInView.addSubview(userIDTextField)
        signInView.addSubview(passwordTextField)
        signInView.addSubview(signInButton)
        
        configureConstraints()
    }
    
    func configureConstraints() {
        
        let signInViewConstraints = [
            signInView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            signInView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signInView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
            
        ]
        
        let logoImageConstraints = [
            logoImage.topAnchor.constraint(equalTo: signInView.topAnchor, constant: 50),
            logoImage.leadingAnchor.constraint(equalTo: signInView.leadingAnchor),
            logoImage.trailingAnchor.constraint(equalTo: signInView.trailingAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 115)
            
        ]
        
        let userIDTFConstraints = [
            userIDTextField.topAnchor.constraint(equalTo: logoImage.topAnchor, constant: 20),
            userIDTextField.leadingAnchor.constraint(equalTo: signInView.leadingAnchor),
            userIDTextField.trailingAnchor.constraint(equalTo: signInView.trailingAnchor),
            userIDTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
        
        let passwordTFConstraints = [
            passwordTextField.topAnchor.constraint(equalTo: userIDTextField.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: signInView.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: signInView.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
        
        let signInButtonConstraints = [
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            signInButton.leadingAnchor.constraint(equalTo: signInView.leadingAnchor, constant: 20),
            signInButton.trailingAnchor.constraint(equalTo: signInView.trailingAnchor, constant: -20),
            signInButton.heightAnchor.constraint(equalToConstant: 40)
            
        ]
        
        NSLayoutConstraint.activate(signInViewConstraints)
        NSLayoutConstraint.activate(logoImageConstraints)
        NSLayoutConstraint.activate(userIDTFConstraints)
        NSLayoutConstraint.activate(passwordTFConstraints)
        NSLayoutConstraint.activate(signInButtonConstraints)
    }
    
}
