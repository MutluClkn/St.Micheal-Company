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
    
    private let productView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let infoView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .darkText
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    private let addToCartButton : UIButton = {
        let button = UIButton()
        if let image = UIImage(systemName: "bag"){
            button.setImage(image ,for: .normal)
            button.tintColor = .white
            button.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 20), forImageIn: .normal)
        }
        button.backgroundColor = .darkText
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        return button
    }()
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "product")
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(productView)
        contentView.addSubview(infoView)
        productView.addSubview(productImageView)
        infoView.addSubview(titleLabel)
        infoView.addSubview(priceLabel)
        infoView.addSubview(addToCartButton)
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
            make.height.equalTo(205)
        }
        
        infoView.snp.makeConstraints { make in
            make.top.equalTo(productView.snp_bottomMargin)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.bottom.equalTo(contentView)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(infoView.snp_topMargin).offset(5)
            make.left.equalTo(infoView).offset(15)
            make.right.equalTo(infoView).offset(-15)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.bottom.equalTo(infoView).offset(-20)
            make.left.equalTo(infoView).offset(15)
            make.right.equalTo(addToCartButton).offset(-15)
            
        }
        
        addToCartButton.snp.makeConstraints { make in
            make.bottom.equalTo(infoView).offset(-20)
            make.right.equalTo(infoView).offset(-15)
            make.height.width.equalTo(40)
        }
        
    }
    
}
