//
//  SearchViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    
    var selected : [ProductModel] = []
    let all = ProductCaller.search()
    let patientCare = ProductCaller.patientCare()
    let essential = ProductCaller.essentialOils()
    let wellnessKit = ProductCaller.wellnessBlendKit()
    let wellnessDropper = ProductCaller.wellnessDropper()
    let wellnessBlend = ProductCaller.wellnessBlend()

    lazy var searchTableView : UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.delegate = self
        tv.dataSource = self
        tv.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return tv
    }()
    
    lazy var searchController : UISearchController = {
        let search = UISearchController(searchResultsController: nil)
        
        search.searchResultsUpdater = self
        
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Type Your Keywords"
        search.searchBar.sizeToFit()
        search.searchBar.searchBarStyle = .prominent
        
        search.searchBar.scopeButtonTitles = ["All"]//["All","Patient Care", "Essential", "Blends", "Droppers", "Kits"]
        
        search.searchBar.delegate = self
        return search
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupElements()
        
        navigationItem.searchController = searchController
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.tintColor = .darkText
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All"){
        selected = all.filter({ (product: ProductModel) -> Bool in
            let doesCategoryMatch = (scope == "All") || (product.category == scope)
            
            if isSearchBarEmpty(){
                return doesCategoryMatch
            }else{
                return doesCategoryMatch && (product.header!.lowercased().contains(searchText.lowercased()))
            }
            
        })
        searchTableView.reloadData()
    }
    
    func isSearchBarEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func isFiltering() -> Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!isSearchBarEmpty() || searchBarScopeIsFiltering)
    }

}

extension SearchViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchText: searchBar.text ?? "", scope: searchBar.scopeButtonTitles![selectedScope])
    }
    
    
}

extension SearchViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        
        filterContentForSearchText(searchText: searchController.searchBar.text!, scope: scope)
    }
    
    
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){return selected.count}
        return all.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else{ return UITableViewCell()}

        let selectedProduct : ProductModel
        if isFiltering(){
            selectedProduct = selected[indexPath.row]
        }else{
            selectedProduct = all[indexPath.row]
        }
        cell.titleLabel.text = selectedProduct.header
        cell.productImageView.image = UIImage(named: selectedProduct.image ?? "breathe_away")
        cell.subLabel.text = selectedProduct.category

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
        let selectedProduct : ProductModel
        if isFiltering(){
            selectedProduct = selected[indexPath.row]
        }else{
            selectedProduct = all[indexPath.row]
        }
        DispatchQueue.main.async { [weak self] in
            let vc = ProductInfoViewController()
            vc.titleLabel.text = selectedProduct.header
            vc.subLabel.text = selectedProduct.category
            vc.productImage.image = UIImage(named: (selectedProduct.image!))
            vc.productDescription.text = selectedProduct.description
            self?.navigationController?.pushViewController(vc, animated: true)
            self?.navigationController?.navigationBar.tintColor = .darkText
        }
    }
}

extension SearchViewController {
    func setupElements(){
        view.addSubview(searchTableView)
        
        searchTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        searchTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        searchTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
    
//    func updateSearchResults(for searchController: UISearchController) {
//        let searchBar = searchController.searchBar
//
//        guard let query = searchBar.text,
//              !query.trimmingCharacters(in: .whitespaces).isEmpty,
//              query.trimmingCharacters(in: .whitespaces).count >= 2,
//              let resultsController = searchController.searchResultsController as? SearchResultsViewController else {
//                  return
//              }
//
//        resultsController.list = ProductCaller.search()
//        resultsController.searchTableView.reloadData()
//        resultsController.list = resultsController.list.filter{$0.header?.range(of: query, options: .caseInsensitive) != nil}
//    }
//
//
//    static let identifier = "searchVC"
//
//    private let products = ProductCaller.self
//
//    // Search Bar
//    private let searchController : UISearchController = {
//       let controller = UISearchController(searchResultsController: SearchResultsViewController())
//        controller.searchBar.placeholder = "Type Your Keywords"
//        controller.searchBar.searchBarStyle = .minimal
//        return controller
//    }()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        updateSearchResults(for: searchController)
//
//        title = "Search"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationItem.largeTitleDisplayMode = .always
//
//        view.backgroundColor = .systemBackground
//        navigationItem.searchController = searchController
//        searchController.searchResultsUpdater = self
//        navigationController?.navigationBar.tintColor = .darkText
//
//    }
//}



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

