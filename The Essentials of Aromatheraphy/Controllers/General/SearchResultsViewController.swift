//
//  SearchResultsViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class SearchResultsViewController: UIViewController {

    private let products = ProductInfoBank.getProduct()
    
    private let searchResults: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2 - 10, height: 260)
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(SearcResultsCollectionViewCell.self, forCellWithReuseIdentifier: SearcResultsCollectionViewCell.identifier)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(searchResults)
        
        searchResults.dataSource = self
        searchResults.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchResults.frame = view.bounds
    }

}

extension SearchResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearcResultsCollectionViewCell.identifier, for: indexPath) as? SearcResultsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.titleLabel.text = products[indexPath.row].header
        cell.priceLabel.text = products[indexPath.row].price
        cell.subLabel.text = products[indexPath.row].category
        cell.productImageView.image = UIImage(named: products[indexPath.row].image ?? "breathe_away")
        cell.backgroundColor = .white
        return cell
    }
  
    // It has to direct user to product page once it's clicked but it is not working. I'll work on it.
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        DispatchQueue.main.async { [weak self] in
//            let vc = ProductInfoViewController()
//            self?.navigationController?.pushViewController(vc, animated: true)
//            self?.navigationController?.navigationBar.tintColor = .darkText
//        }
//    }
}
