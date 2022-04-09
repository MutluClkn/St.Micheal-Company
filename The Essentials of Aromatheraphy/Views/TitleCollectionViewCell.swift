//
//  TitleCollectionViewCell.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 2.04.2022.
//

import UIKit
import SnapKit

class TitleCollectionViewCell: UICollectionViewCell {
    static let identifier = "TitleCollectionViewCell"
    
    let products = ProductInfoBank.getProduct()
    var productsArrayIndex = 0
    
    let productView: UIView = {
        let view = UIView()
        return view
    }()
    
    let infoView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.layer.masksToBounds = true
        return view
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.text = "Peppermint"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.text = "Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
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
            button.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 20), forImageIn: .normal)}
        button.backgroundColor = UIColor(hexString: "#000070")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "breathe_away")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        productImageView.bringSubviewToFront(infoView)
        contentView.addSubview(productView)
        contentView.addSubview(infoView)

        productView.addSubview(productImageView)
        infoView.addSubview(titleLabel)
        infoView.addSubview(subLabel)
        infoView.addSubview(priceLabel)
        infoView.addSubview(addToCartButton)
        
       // productSelection()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
     //   productView.frame = contentView.bounds
        applyConstraints()
    }
    
    func applyConstraints() {
        
        productImageView.snp.makeConstraints { make in
            make.edges.equalTo(productView).inset(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        }
        
        productView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.height.equalTo(220)
        }
        
        infoView.snp.makeConstraints { make in
            make.top.equalTo(productView.snp_bottomMargin).offset(-25)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.bottom.equalTo(contentView)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(infoView.snp_topMargin).offset(5)
            make.left.equalTo(infoView).offset(15)
            make.right.equalTo(infoView).offset(-15)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp_bottomMargin).offset(10)
            make.left.equalTo(infoView).offset(15)
            make.right.equalTo(infoView).offset(-15)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.bottom.equalTo(infoView)
            make.left.equalTo(infoView).offset(15)
            make.right.equalTo(addToCartButton).offset(-15)
            
        }
        
        addToCartButton.snp.makeConstraints { make in
            make.bottom.equalTo(infoView)
            make.right.equalTo(infoView).offset(-15)
            make.height.width.equalTo(40)
        }
        
    }
    
//    func productSelection() {
//        titleLabel.text = products[0].header
//        priceLabel.text = products[0].price
//        subLabel.text = products[0].category
//        productImageView.image = UIImage(named: products[0].image)
//    }
    
}
