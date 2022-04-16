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
    
    let productImage : UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFill
            image.image = UIImage(named: "product")
            image.translatesAutoresizingMaskIntoConstraints = false
    //        image.layer.masksToBounds = true
    //        image.layer.cornerRadius = 20
            return image
        }()
        
    //     let amountLabel : UILabel = {
    //       let amount = UILabel()
    //        amount.text = "1"
    //        amount.translatesAutoresizingMaskIntoConstraints = false
    //        amount.font = .systemFont(ofSize: 25, weight: .bold)
    //        amount.textColor = .darkText
    //        return amount
    //    }()
    //
    //     let stepper : UIStepper = {
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
        
         let titleLabel : UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 22, weight: .bold)
            label.text = "Peppermint St. Michael & Company Essential Oil"
            label.numberOfLines = 0
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
         let subLabel : UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 20, weight: .regular)
            label.textColor = .gray
            label.text = "Essential Oil"
            label.numberOfLines = 0
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
         let priceLabel : UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 22, weight: .semibold)
             label.textColor = .white
            label.text = "$9.99"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .left
            return label
        }()
        
        let addToCartButton : UIButton = {
            let button = UIButton()
            button.setTitle("Cart", for: .normal)
            button.tintColor = .white
            button.backgroundColor = .white
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = true
            
            return button
        }()
        
        let descriptionTitle : UILabel = {
           let label = UILabel()
            label.font = .systemFont(ofSize: 22, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.numberOfLines = 0
            label.text = "Description"
            
            return label
        }()
        
        let productDescription : UILabel = {
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
        contentView.addSubview(subLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(addToCartButton)
        contentView.addSubview(productDescription)
        contentView.addSubview(descriptionTitle)
//        contentView.addSubview(amountLabel)
//        contentView.addSubview(stepper)
        
       // productSelection()
        configureConstraints()
        
//        stepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
//        amountLabel.text = stepper.value.description
        
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 2000)
        scrollView.isScrollEnabled = true
    }
    
//    @objc func stepperValueChanged(_ sender: UIStepper!){
//        amountLabel.text = sender.value.description
//    }
    
//    func productSelection() {
//        titleLabel.text = products[0].header
//        subLabel.text = products[0].category
//        priceLabel.text = products[0].price
//        productDescription.text = products[0].description
//        productImage.image = UIImage(named: products[0].image)
//    }
    
    func configureConstraints() {
        
        let productImageConstraints = [
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 400)
//            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35),
//            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35),
//            productImage.heightAnchor.constraint(equalToConstant: 500)
        ]
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 30),
            //titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ]
        
        let subLabelConstraints = [
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ]
        
        let priceLabelConstraints = [
            priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            priceLabel.centerYAnchor.constraint(equalTo: addToCartButton.centerYAnchor)
        ]
        
        let addToCartButtonConstraints = [
            
            addToCartButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 30),
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
            descriptionTitle.topAnchor.constraint(equalTo: addToCartButton.bottomAnchor, constant: 30),
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
        NSLayoutConstraint.activate(subLabelConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
        NSLayoutConstraint.activate(addToCartButtonConstraints)
//        NSLayoutConstraint.activate(amountLabelConstraints)
//        NSLayoutConstraint.activate(stepperConstraints)
        NSLayoutConstraint.activate(productDescriptionConstraints)
        NSLayoutConstraint.activate(descriptionTitleConstraints)
        
        
    }
}



