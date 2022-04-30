//
//  SearchResultsViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class SearchResultsViewController: UIViewController {

    var list : [ProductModel] = []
    
    
    public let searchResults: UICollectionView = {
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

extension SearchResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearcResultsCollectionViewCell.identifier, for: indexPath) as? SearcResultsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.titleLabel.text = list[indexPath.row].header
        cell.priceLabel.text = list[indexPath.row].price
        cell.subLabel.text = list[indexPath.row].category
        cell.productImageView.image = UIImage(named: list[indexPath.row].image ?? "breathe_away")
        cell.backgroundColor = .white
        return cell
    }
    
  
    // It has to direct user to product page once it's clicked but it is not working. I'll work on it.
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        DispatchQueue.main.async { [weak self] in
            let vc = ProductInfoViewController()
            vc.titleLabel.text = self?.list[indexPath.row].header
            vc.subLabel.text = self?.list[indexPath.row].category
            vc.productImage.image = UIImage(named: (self?.list[indexPath.row].image!)!)
            vc.productDescription.text = self?.list[indexPath.row].description
            self?.navigationController?.pushViewController(vc, animated: true)
            self?.navigationController?.navigationBar.tintColor = .darkText
        }
    }
}
