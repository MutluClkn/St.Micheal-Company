//
//  WellnessDropperProductViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 17.04.2022.
//

import UIKit

class WellnessDropperProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let products = ProductCaller.wellnessDropper()
    
    private let tableView : UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else{ return UITableViewCell()}
        
        cell.titleLabel.text = products[indexPath.row].header
        cell.productImageView.image = UIImage(named: products[indexPath.row].image ?? "breathe_away")
        cell.subLabel.text = products[indexPath.row].category
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
