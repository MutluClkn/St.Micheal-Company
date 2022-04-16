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
    
    private let products : [ProductModel] = [ProductModel]()
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(productImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subLabel)
        
        applyConstraints()
    }
    
    func applyConstraints() {
        
        productImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView)
            make.top.equalTo(contentView).offset(5)
            make.bottom.equalTo(contentView).offset(-5)
            make.width.equalTo(140)
            
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
        


    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    
}


