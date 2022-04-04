//
//  LoginScreenViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 17.03.2022.
//

import UIKit

class AccountSignedIn: UIViewController {
    // PRODUCT INFO PAGE ALTERNATIVE
/*
 let products = ProductInfoBank()
 
 private let scrollView : UIScrollView = {
     let view = UIScrollView()
     view.translatesAutoresizingMaskIntoConstraints = false
     return view
 }()
 
 private let contentView : UIView = {
     let view = UIView()
     view.translatesAutoresizingMaskIntoConstraints = false
     return view
 }()
 
 private let infoContentView : UIView = {
     let view = UIView()
     view.translatesAutoresizingMaskIntoConstraints = false
     return view
 }()
 
 private let imageContentView : UIView = {
     let view = UIView()
     view.translatesAutoresizingMaskIntoConstraints = false
     return view
 }()
 
 private let productImage : UIImageView = {
     let image = UIImageView()
     image.contentMode = .scaleAspectFill
     image.image = UIImage(named: "product")
     image.translatesAutoresizingMaskIntoConstraints = false
     return image
 }()
 
 private let amountLabel : UILabel = {
    let amount = UILabel()
     amount.text = "1"
     amount.translatesAutoresizingMaskIntoConstraints = false
     amount.font = .systemFont(ofSize: 25, weight: .bold)
     amount.textColor = .darkText
     return amount
 }()

 private let stepper : UIStepper = {
    let stepper = UIStepper()
     stepper.autorepeat = true
     stepper.isContinuous = true
     stepper.minimumValue = 0
     stepper.maximumValue = 30
     stepper.translatesAutoresizingMaskIntoConstraints = false
     stepper.value = 1
     stepper.wraps = false
     stepper.stepValue = 1
     return stepper
 }()
 
 private let titleLabel : UILabel = {
     let label = UILabel()
     label.font = .systemFont(ofSize: 22, weight: .bold)
     label.text = "Peppermint St. Michael & Company Essential Oil"
     label.numberOfLines = 0
     label.translatesAutoresizingMaskIntoConstraints = false
     return label
 }()
 
 private let subLabel : UILabel = {
     let label = UILabel()
     label.font = .systemFont(ofSize: 20, weight: .regular)
     label.text = "Essential Oil"
     label.numberOfLines = 0
     label.translatesAutoresizingMaskIntoConstraints = false
     return label
 }()
 
 private let priceLabel : UILabel = {
     let label = UILabel()
     label.font = .systemFont(ofSize: 22, weight: .semibold)
     label.textColor = UIColor(hexString: "#53906C")
     label.text = "$9.99"
     label.translatesAutoresizingMaskIntoConstraints = false
     label.textAlignment = .left
     return label
 }()
 
 private let addToCartButton : UIButton = {
     let button = UIButton()
     button.setTitle("Cart", for: .normal)
     button.tintColor = .white
     button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
     button.backgroundColor = UIColor(hexString: "#000070")
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
Descrip
"""
     return text
 }()
 
 
 
 override func viewDidLoad() {
     super.viewDidLoad()
     view.backgroundColor = .systemBackground
     
     view.addSubview(scrollView)
     scrollView.addSubview(contentView)
     
     contentView.addSubview(imageContentView)
     contentView.addSubview(infoContentView)
     
     imageContentView.addSubview(productImage)
     
     infoContentView.addSubview(titleLabel)
     infoContentView.addSubview(subLabel)
     infoContentView.addSubview(priceLabel)
     infoContentView.addSubview(addToCartButton)
     infoContentView.addSubview(productDescription)
     infoContentView.addSubview(descriptionTitle)
     
     
     configureConstraints()
     productSelection()
     
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
 
 func productSelection() {
     titleLabel.text = products.list[0].header
     subLabel.text = products.list[0].category
//      priceLabel.text = products.list[0].price
     productDescription.text = products.list[0].description
     productImage.image = UIImage(named: products.list[0].image)
 }
 
 
 func configureConstraints() {
     
     scrollView.snp.makeConstraints { make in
         make.top.equalTo(view.snp_topMargin)
         make.centerX.equalTo(view.snp.centerX)
         make.bottom.equalTo(view.snp_bottomMargin)
         make.width.equalTo(view.snp.width)
     }
     
     contentView.snp.makeConstraints { make in
         make.top.equalTo(scrollView.snp_topMargin)
         make.centerX.equalTo(scrollView.snp.centerX)
         make.width.equalTo(view.snp.width)
         make.bottom.equalTo(scrollView.snp_bottomMargin)
     }
     
     imageContentView.snp.makeConstraints { make in
         make.top.equalTo(contentView.snp_topMargin)
         make.left.equalTo(contentView.snp_leftMargin)
         make.right.equalTo(contentView.snp_rightMargin)
         make.height.equalTo(400)
     }
     
     infoContentView.snp.makeConstraints { make in
         make.top.equalTo(imageContentView.snp_bottomMargin)
         make.left.equalTo(contentView.snp_leftMargin)
         make.right.equalTo(contentView.snp_rightMargin)
         make.bottom.equalTo(contentView.snp_bottomMargin)
     }
     
     productImage.snp.makeConstraints { make in
         make.top.equalTo(imageContentView.snp_topMargin).offset(-27)
         make.right.equalTo(imageContentView.snp_rightMargin).offset(-10)
         make.left.equalTo(imageContentView.snp_leftMargin).offset(10)
         make.bottom.equalTo(imageContentView.snp_bottomMargin)
     }
     
     titleLabel.snp.makeConstraints { make in
         make.top.equalTo(infoContentView.snp_topMargin).offset(30)
         make.left.equalTo(infoContentView.snp_leftMargin).offset(10)
         make.right.equalTo(infoContentView.snp_rightMargin).offset(-10)
         
     }
     
     subLabel.snp.makeConstraints { make in
         make.top.equalTo(titleLabel.snp_bottomMargin).offset(10)
         make.left.equalTo(infoContentView.snp_leftMargin).offset(10)
         make.right.equalTo(infoContentView.snp_rightMargin).offset(-10)
         
     }
     
     priceLabel.snp.makeConstraints { make in
         make.right.equalTo(addToCartButton.snp_rightMargin).offset(-10)
         make.left.equalTo(infoContentView.snp_leftMargin).offset(10)
         make.centerY.equalTo(addToCartButton)
     }

     addToCartButton.snp.makeConstraints { make in
         make.top.equalTo(subLabel.snp_bottomMargin).offset(40)
         make.right.equalTo(infoContentView).offset(-20)
         make.height.equalTo(55)
         make.width.equalTo(75)
     }
     
     descriptionTitle.snp.makeConstraints { make in
         make.top.equalTo(addToCartButton.snp_bottomMargin).offset(50)
         make.left.equalTo(infoContentView.snp_leftMargin).offset(10)
         make.right.equalTo(infoContentView.snp_rightMargin).offset(-10)
     }
     
     productDescription.snp.makeConstraints { make in
         make.top.equalTo(descriptionTitle.snp_bottomMargin).offset(30)
         make.left.equalTo(infoContentView.snp_leftMargin).offset(10)
         make.right.equalTo(infoContentView.snp_rightMargin).offset(-10)
     }
     
    
 }
 */
}
