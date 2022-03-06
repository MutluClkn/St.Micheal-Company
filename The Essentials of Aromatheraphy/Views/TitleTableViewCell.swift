//
//  TitleTableViewCell.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    
    //The pictures will show up at the Search Page. I will continue to work on here later on.
    
    
    
    static let identifier = "TitleTableViewCell"
    
    private let titleUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleUIImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
