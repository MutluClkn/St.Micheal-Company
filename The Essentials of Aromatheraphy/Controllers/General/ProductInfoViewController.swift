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
    
//    var v = 0
    
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
//        image.layer.masksToBounds = true
//        image.layer.cornerRadius = 20
        return image
    }()
    
//    private let amountLabel : UILabel = {
//       let amount = UILabel()
//        amount.text = "1"
//        amount.translatesAutoresizingMaskIntoConstraints = false
//        amount.font = .systemFont(ofSize: 25, weight: .bold)
//        amount.textColor = .darkText
//        return amount
//    }()
//
//    private let stepper : UIStepper = {
//       let stepper = UIStepper()
//        stepper.autorepeat = true
//        stepper.isContinuous = true
//        stepper.minimumValue = 0
//        stepper.maximumValue = 30
//        stepper.translatesAutoresizingMaskIntoConstraints = false
//        stepper.value = 1
//        stepper.wraps = false
//        stepper.stepValue = 1
//        return stepper
//    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textColor = .darkText
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    private let addToCartButton : UIButton = {
        let button = UIButton()
//        if let image = UIImage(systemName: "bag"){
//            button.setImage(image ,for: .normal)
//            button.tintColor = .white
//            button.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 25), forImageIn: .normal)
//        }
        button.setTitle("Cart", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkText
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.layer.cornerRadius = 25
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        return button
    }()
    
    private let descriptionTitle : UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Description"
        
        return label
    }()
    
    private let productDescription : UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 18, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.numberOfLines = 0
        text.sizeToFit()
        text.text = """
Latin name: Mentha piperita
Country of origin: USA
Part of the plant: Leaves, stems, flowers
Extraction method: Steam distilled
Main biochemical components*: Menthol, menthone, isomenthone
Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.
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
        view.backgroundColor = .systemBackground
        
        setupScrollView()

        contentView.addSubview(productImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(addToCartButton)
        contentView.addSubview(productDescription)
        contentView.addSubview(descriptionTitle)
//        contentView.addSubview(amountLabel)
//        contentView.addSubview(stepper)
        
        
        configureConstraints()
        
//        stepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
//        amountLabel.text = stepper.value.description
        
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 1500)
        scrollView.isScrollEnabled = true
    }
    
//    @objc func stepperValueChanged(_ sender: UIStepper!){
//        amountLabel.text = sender.value.description
//    }
    
    func configureConstraints() {
        
        let productImageConstraints = [
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -27),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 400)
//            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35),
//            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35),
//            productImage.heightAnchor.constraint(equalToConstant: 500)
        ]
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 130),
            //titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ]
        
        let priceLabelConstraints = [
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 22),
            priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            priceLabel.centerYAnchor.constraint(equalTo: addToCartButton.centerYAnchor)
        ]
        
        let addToCartButtonConstraints = [
            
            addToCartButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            //addToCartButton.leadingAnchor.constraint(equalTo: priceLabel.leadingAnchor, constant: 20),
            addToCartButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
//            addToCartButton.heightAnchor.constraint(equalToConstant: 50),
//            addToCartButton.widthAnchor.constraint(equalToConstant: 50)
            addToCartButton.heightAnchor.constraint(equalToConstant: 55),
            addToCartButton.widthAnchor.constraint(equalToConstant: 75)
        ]
        
//        let stepperConstraints = [
//            stepper.centerYAnchor.constraint(equalTo: amountLabel.centerYAnchor),
//            stepper.trailingAnchor.constraint(equalTo: amountLabel.leadingAnchor, constant: -15),
//        ]
        
//        let amountLabelConstraints = [
//            amountLabel.centerYAnchor.constraint(equalTo: addToCartButton.centerYAnchor),
//  //          amountLabel.topAnchor.constraint(equalTo: addToCartButton.topAnchor, constant: 5),
//            amountLabel.trailingAnchor.constraint(equalTo: addToCartButton.leadingAnchor, constant: -30),
//
//        ]
        
        let descriptionTitleConstraints = [
            descriptionTitle.topAnchor.constraint(equalTo: addToCartButton.bottomAnchor, constant: 50),
            descriptionTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        ]
        
        let productDescriptionConstraints = [
            productDescription.topAnchor.constraint(equalTo: descriptionTitle.bottomAnchor, constant: 30),
            productDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            productDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ]
        
        //        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(productImageConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(addToCartButtonConstraints)
//        NSLayoutConstraint.activate(amountLabelConstraints)
//        NSLayoutConstraint.activate(stepperConstraints)
        NSLayoutConstraint.activate(productDescriptionConstraints)
        NSLayoutConstraint.activate(descriptionTitleConstraints)
        
        
    }
}


// MARK: - Close keyboard by touching anywhere
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
