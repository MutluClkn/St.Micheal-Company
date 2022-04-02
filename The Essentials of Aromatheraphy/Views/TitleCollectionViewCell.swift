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
        productView.addSubview(productImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        productView.frame = contentView.bounds
        applyConstraints()
    }
    
    func applyConstraints() {
        productImageView.snp.makeConstraints { make in
            make.edges.equalTo(productView).inset(UIEdgeInsets(top: 30, left: 5, bottom: 30, right: 5))
        }
    }
    
}
