//
//  WellnessBlendProductsViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 17.04.2022.
//

import UIKit

class WellnessBlendProductsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let products = ProductCaller.wellnessBlend()
    
    private let tableView : UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            let vc = ProductInfoViewController()
            vc.titleLabel.text = self.products[indexPath.row].header
            vc.subLabel.text = self.products[indexPath.row].category
            vc.productImage.image = UIImage(named: self.products[indexPath.row].image!)
            vc.productDescription.text = self.products[indexPath.row].description
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Wellness Essential Oil Blends"
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
        header.textLabel?.textColor = .darkText
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLetter()
    }

}
