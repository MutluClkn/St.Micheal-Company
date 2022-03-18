//
//  TitleTableViewCell.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class TitleTableViewCell: UICollectionViewCell {

    
    //The pictures will show up at the Search Page. I will work on it later on.
    
    
    
    static let identifier = "TitleTableViewCell"
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "product")
        return imageView
    }()
    
    override init (frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(productImageView)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        let productImageViewConstraints = [
            productImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            productImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            productImageView.widthAnchor.constraint(equalToConstant: 100)
        ]

        NSLayoutConstraint.activate(productImageViewConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        productImageView.frame = contentView.bounds
    }
    
    
}
