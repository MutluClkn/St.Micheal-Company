//
//  LoginScreenViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 17.03.2022.
//

import UIKit

class AccountSignedIn: UIViewController {
    
    private let welcomeLabel : UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Welcome"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let userID : UILabel = {
        let userID = UILabel()
        userID.font = .systemFont(ofSize: 25, weight: .bold)
        userID.text = "Mutlu Calkan"
        userID.textAlignment = .center
        userID.translatesAutoresizingMaskIntoConstraints = false
        return userID
    }()
    
    private let userInfoButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.setTitle("User Info", for: .normal)
//        button.setImage(UIImage(named: "person.circle"), for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    private let accountSettingsButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitle("Account Settings", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    private let yourOrdersButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitle("Your Orders", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    private let signOutButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitle("Sign Out", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        title = "Account"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(welcomeLabel)
        view.addSubview(userID)
        view.addSubview(userInfoButton)
        view.addSubview(accountSettingsButton)
        view.addSubview(yourOrdersButton)
        view.addSubview(signOutButton)
        
        configureConstraints()
        
    }
    
    func configureConstraints() {
        
        let welcomeLabelConstraints = [
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
    
        ]
        
        let userIDLabelConstraints = [
            userID.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
            userID.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userID.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            
        ]
        
        let userInfoButtonConstraints = [
            userInfoButton.topAnchor.constraint(equalTo: userID.bottomAnchor, constant: 20),
            userInfoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userInfoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            userInfoButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let accountSettingsButtonConstraints = [
            accountSettingsButton.topAnchor.constraint(equalTo: userInfoButton.bottomAnchor, constant: 5),
            accountSettingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            accountSettingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            accountSettingsButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let yourOrdersButtonConstraints = [
            yourOrdersButton.topAnchor.constraint(equalTo: accountSettingsButton.bottomAnchor, constant: 5),
            yourOrdersButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            yourOrdersButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            yourOrdersButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let signOutButtonConstraints = [
            signOutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signOutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signOutButton.heightAnchor.constraint(equalToConstant: 40),
            signOutButton.topAnchor.constraint(equalTo: yourOrdersButton.bottomAnchor, constant: 50)
        ]
        
        NSLayoutConstraint.activate(welcomeLabelConstraints)
        NSLayoutConstraint.activate(userIDLabelConstraints)
        NSLayoutConstraint.activate(userInfoButtonConstraints)
        NSLayoutConstraint.activate(accountSettingsButtonConstraints)
        NSLayoutConstraint.activate(yourOrdersButtonConstraints)
        NSLayoutConstraint.activate(signOutButtonConstraints)
        
    }


}
