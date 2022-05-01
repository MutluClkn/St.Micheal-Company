//
//  SearchResultsViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    var list : [ProductModel] = []
    
    
    public let searchTableView : UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
    }()
    
//    public let searchResults: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2 - 10, height: 260)
//        layout.minimumInteritemSpacing = 0
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(SearcResultsCollectionViewCell.self, forCellWithReuseIdentifier: SearcResultsCollectionViewCell.identifier)
//        return collectionView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(searchTableView)
        
        
        searchTableView.dataSource = self
        searchTableView.delegate = self
        
        
    }
    
    func setUpElements(){
        searchTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        searchTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        searchTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchTableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Results"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else{ return UITableViewCell()}
        
        cell.titleLabel.text = list[indexPath.row].header
        cell.productImageView.image = UIImage(named: list[indexPath.row].image ?? "breathe_away")
        cell.subLabel.text = list[indexPath.row].category
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        DispatchQueue.main.async {
            let vc = ProductInfoViewController()
            vc.titleLabel.text = self.list[indexPath.row].header
            vc.subLabel.text = self.list[indexPath.row].category
            vc.productImage.image = UIImage(named: self.list[indexPath.row].image!)
            vc.productDescription.text = self.list[indexPath.row].description
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }

}

//extension SearchResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return list.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearcResultsCollectionViewCell.identifier, for: indexPath) as? SearcResultsCollectionViewCell else {
//            return UICollectionViewCell()
//        }
//        cell.titleLabel.text = list[indexPath.row].header
//        cell.priceLabel.text = list[indexPath.row].price
//        cell.subLabel.text = list[indexPath.row].category
//        cell.productImageView.image = UIImage(named: list[indexPath.row].image ?? "breathe_away")
//        cell.backgroundColor = .white
//        return cell
//    }
//
//
//    // It has to direct user to product page once it's clicked but it is not working. I'll work on it.
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        DispatchQueue.main.async { [weak self] in
//            let vc = ProductInfoViewController()
//            vc.titleLabel.text = self?.list[indexPath.row].header
//            vc.subLabel.text = self?.list[indexPath.row].category
//            vc.productImage.image = UIImage(named: (self?.list[indexPath.row].image!)!)
//            vc.productDescription.text = self?.list[indexPath.row].description
//            self?.navigationController?.pushViewController(vc, animated: true)
//            self?.navigationController?.navigationBar.tintColor = .darkText
//        }
//    }
//}
