//
//  BlogViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    private let homeFeedLabel : UITableView = {

        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedLabel)
        
        homeFeedLabel.delegate = self
        homeFeedLabel.dataSource = self
        
        configureNavBar()
        
        let mainHeader = MainHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 400))
        homeFeedLabel.tableHeaderView = mainHeader
    }
    
    private func configureNavBar() {
        var image = UIImage(named: "stmichealLogo")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.backBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedLabel.frame = view.bounds
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else{
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
