//
//  ProductInfoViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 16.03.2022.
//

import UIKit

class ProductInfoViewController: UIViewController {
    
    private let productImage : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "product")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 19, weight: .semibold)
        label.textColor = .darkText
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addToCartButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Add to Cart", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private let productDescription : UITextView = {
        let text = UITextView()
        text.font = .systemFont(ofSize: 18, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = """
Description
Latin name: Mentha piperita
Country of origin: USA
Part of the plant: Leaves, stems, flowers
Extraction method: Steam distilled
Main biochemical components*: Menthol, menthone, isomenthone
Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.
"""
        return text
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        view.addSubview(productImage)
        view.addSubview(titleLabel)
        view.addSubview(priceLabel)
        view.addSubview(addToCartButton)
        view.addSubview(productDescription)
        
        configureConstraints()
    }
    
    func configureConstraints() {
        let productImageConstraints = [
            productImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            productImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 400)
        ]
        
        let titleLabelConstraints = [
        
            titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        let priceLabelConstraints = [
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ]
        
        let addToCartButtonConstraints = [
            
            addToCartButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            addToCartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            addToCartButton.heightAnchor.constraint(equalToConstant: 40),
            addToCartButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let productDescriptionConstraints = [
            productDescription.topAnchor.constraint(equalTo: addToCartButton.bottomAnchor, constant: 30),
            productDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            productDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            productDescription.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
     
        NSLayoutConstraint.activate(productImageConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(addToCartButtonConstraints)
        NSLayoutConstraint.activate(productDescriptionConstraints)
        
        
    }

}
