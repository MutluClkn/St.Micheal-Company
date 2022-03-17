//
//  ProductInfoViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 16.03.2022.
//

import UIKit

class ProductInfoViewController: UIViewController {
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    func setupScrollView(){
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        contentView.heightAnchor.constraint(equalToConstant: 2300).isActive = true
    }
    
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
        button.backgroundColor = .darkText
        button.setTitle("Add to Cart", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        
        return button
    }()
    
    private let productDescription : UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 18, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.numberOfLines = 0
        text.sizeToFit()
        text.text = """
Description
Latin name: Mentha piperita
Country of origin: USA
Part of the plant: Leaves, stems, flowers
Extraction method: Steam distilled
Main biochemical components*: Menthol, menthone, isomenthone
Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.
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
        setupScrollView()
        //        view.addSubview(scrollView)
        contentView.addSubview(productImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(addToCartButton)
        contentView.addSubview(productDescription)
        configureConstraints()
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 1500)
        scrollView.isScrollEnabled = true
    }
    
    
    func configureConstraints() {
        
        let productImageConstraints = [
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 400)
        ]
        
        let titleLabelConstraints = [
            
            titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 130),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100)
        ]
        
        let priceLabelConstraints = [
            
            priceLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 130),
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30)
        ]
        
        let addToCartButtonConstraints = [
            
            addToCartButton.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10),
            addToCartButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            addToCartButton.heightAnchor.constraint(equalToConstant: 40),
            addToCartButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let productDescriptionConstraints = [
            productDescription.topAnchor.constraint(equalTo: addToCartButton.bottomAnchor, constant: 30),
            productDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            productDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ]
        
        //        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(productImageConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(addToCartButtonConstraints)
        NSLayoutConstraint.activate(productDescriptionConstraints)
        
        
    }
}
