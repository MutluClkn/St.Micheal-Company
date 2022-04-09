//
//  TitleTableViewCell.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 2.04.2022.
//

import UIKit
import SnapKit

class TitleTableViewCell: UITableViewCell {

    //The pictures will show up at the Search Page. I will work on it later on.
    static let identifier = "TitleTableViewCell"
    
    let products = ProductInfoBank.getProduct()
    var productsArrayIndex = 0
    
    let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "product")
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textColor = .gray
        label.text = "Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.textColor = UIColor(hexString: "#53906C")
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    let addToCartButton : UIButton = {
        let button = UIButton()
        if let image = UIImage(systemName: "bag"){
            button.setImage(image ,for: .normal)
            button.tintColor = .white
            button.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 25), forImageIn: .normal)
        }
        button.backgroundColor = UIColor(hexString: "#000070")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(productImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(addToCartButton)
        
        applyConstraints()
        //productSelection()
    }
    
    func applyConstraints() {
        
        productImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView)
            make.top.equalTo(contentView).offset(5)
            make.bottom.equalTo(contentView).offset(-5)
            make.width.equalTo(120)
            
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(productImageView.snp_rightMargin).offset(20)
            make.top.equalTo(contentView).offset(12)
            make.right.equalTo(contentView).offset(-20)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp_bottomMargin).offset(7)
            make.left.equalTo(productImageView.snp_rightMargin).offset(20)
            make.right.equalTo(contentView).offset(-20)
        }
        
        addToCartButton.snp.makeConstraints { make in
            make.bottom.equalTo(contentView).offset(-20)
            make.right.equalTo(contentView).offset(-20)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.bottom.equalTo(contentView).offset(-20)
            make.left.equalTo(productImageView.snp_rightMargin).offset(20)
            make.right.equalTo(addToCartButton.snp_leftMargin).offset(-10)
            make.centerY.equalTo(addToCartButton)
        }
        


    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
//    func productSelection() {
//        titleLabel.text = products[0].header
//        priceLabel.text = products[0].price
//        productImageView.image = UIImage(named: products[0].image)
//        subLabel.text = products[0].category
//
//    }
    
}


