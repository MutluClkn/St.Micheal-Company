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
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "product")
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let productLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 19, weight: .semibold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .darkText
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    private let addToCartButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkText
        button.setTitle("Add to Cart", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        
        return button
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(productImageView)
        contentView.addSubview(productLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(addToCartButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        productImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView)
            make.top.equalTo(contentView).offset(2)
            make.bottom.equalTo(contentView).offset(-2)
            make.width.equalTo(120)
            
        }
        
        productLabel.snp.makeConstraints { make in
            make.left.equalTo(productImageView.snp_rightMargin).offset(20)
            make.top.equalTo(contentView).offset(10)
            make.right.equalTo(contentView).offset(-20)
        }
        
        addToCartButton.snp.makeConstraints { make in
            make.bottom.equalTo(contentView).offset(-20)
            make.right.equalTo(contentView).offset(-20)
            make.height.equalTo(30)
            make.width.equalTo(110)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.bottom.equalTo(contentView).offset(-20)
            make.left.equalTo(productImageView.snp_rightMargin).offset(20)
            make.right.equalTo(addToCartButton.snp_leftMargin).offset(-10)
        }
        


    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
