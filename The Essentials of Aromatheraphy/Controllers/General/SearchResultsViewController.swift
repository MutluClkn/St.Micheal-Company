//
//  SearchResultsViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class SearchResultsViewController: UIViewController {

    
//    private let searchResults: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 3 - 10, height: 400)
//        layout.minimumInteritemSpacing = 0
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(TitleTableViewCell.self, forCellWithReuseIdentifier: TitleTableViewCell.identifier)
//        return collectionView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
//        view.addSubview(searchResults)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        searchResults.frame = view.bounds
    }

}
