//
//  SearchViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        
        guard let query = searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty,
              query.trimmingCharacters(in: .whitespaces).count >= 3,
              let resultsController = searchController.searchResultsController as? SearchResultsViewController else {
                  return
              }
        
        resultsController.list = ProductCaller.search()
        resultsController.searchResults.reloadData()
        resultsController.list = resultsController.list.filter{$0.header?.range(of: query, options: .caseInsensitive) != nil}
    }
    
    
    static let identifier = "searchVC"
    
    private let products = ProductCaller.self
    
    // Search Bar
    private let searchController : UISearchController = {
       let controller = UISearchController(searchResultsController: SearchResultsViewController())
        controller.searchBar.placeholder = "Type Your Keywords"
        controller.searchBar.searchBarStyle = .minimal
        return controller
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .systemBackground
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        navigationController?.navigationBar.tintColor = .darkText
    
    }
}
//extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return products.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
//            return UITableViewCell()
//        }
//        cell.titleLabel.text = products[indexPath.row].header
//        cell.subLabel.text = products[indexPath.row].category
//        cell.productImageView.image = UIImage(named: products[indexPath.row].image ?? "breathe_away")
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 160
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        DispatchQueue.main.async { [weak self] in
//            let vc = ProductInfoViewController()
//            self?.navigationController?.pushViewController(vc, animated: true)
//            self?.navigationController?.navigationBar.tintColor = .darkText
//        }
//    }
//}

