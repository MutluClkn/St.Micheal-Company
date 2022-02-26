//
//  MainHeaderUIView.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit

class MainHeaderUIView: UIView {

    
    private let mainHeaderImageView : UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "mainHeaderImage")
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(mainHeaderImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainHeaderImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
