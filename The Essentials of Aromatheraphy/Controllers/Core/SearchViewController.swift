//
//  SearchViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit

class SearchViewController: UIViewController {

//    private let searchTable : UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell)
//    }()
    
    private let searchController : UISearchController = {
       let controller = UISearchController(searchResultsController: SearchResultsViewController())
        controller.searchBar.placeholder = "Type Your Keywords"
        controller.searchBar.searchBarStyle = .minimal
        return controller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search Product"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .systemBackground
        navigationItem.searchController = searchController
        navigationController?.navigationBar.tintColor = .darkText
//        view.addSubview(searchTable)
//        searchTable.delegate = self
//        searchTable.dataSource = self
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        searchTable.frame = view.bounds
//    }
    


}
