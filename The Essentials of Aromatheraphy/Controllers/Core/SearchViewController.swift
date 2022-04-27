//
//  SearchViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    
    static let identifier = "searchVC"
    
    private let products = ProductCaller.self
    
    // Search Bar
    private let searchController : UISearchController = {
       let controller = UISearchController(searchResultsController: SearchResultsViewController())
        controller.searchBar.placeholder = "Type Your Keywords"
        controller.searchBar.searchBarStyle = .minimal
        return controller
    }()
    
    // Categories
    private let categoriesLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Choose a Category"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let patientCareButton : UIButton = {
        let button = UIButton()
        button.setTitle("Patient Care and Care Givers' Blend", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButtonPatient), for: .touchUpInside)
        return button
    }()
    private let wellnessDropperButton : UIButton = {
        let button = UIButton()
        button.setTitle("Wellness Essential Oil Dropper", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButtonDropper), for: .touchUpInside)
        return button
    }()
    private let wellnessBlendKit : UIButton = {
        let button = UIButton()
        button.setTitle("Wellness Essential Oil Blend Kit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButtonKit), for: .touchUpInside)
        return button
    }()
    private let essentialOils : UIButton = {
        let button = UIButton()
        button.setTitle("Essential Oils", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButtonEssential), for: .touchUpInside)
        return button
    }()
    private let wellnessBlendsButton : UIButton = {
        let button = UIButton()
        button.setTitle("Wellness Essential Oil Blends", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButtonBlend), for: .touchUpInside)
        return button
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
        
        view.addSubview(categoriesLabel)
        view.addSubview(patientCareButton)
        view.addSubview(wellnessBlendsButton)
        view.addSubview(wellnessDropperButton)
        view.addSubview(essentialOils)
        view.addSubview(wellnessBlendKit)
       
        applyConstraints()
    }
    

    
    @objc func didTapButtonPatient(sender : UIButton!){
        DispatchQueue.main.async {
            let vc = PatientCareProductsViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    @objc func didTapButtonBlend(sender : UIButton!){
        DispatchQueue.main.async {
            let vc = WellnessBlendProductsViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    @objc func didTapButtonDropper(sender : UIButton!){
        DispatchQueue.main.async {
            let vc = WellnessDropperProductViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    @objc func didTapButtonKit(sender : UIButton!){
        DispatchQueue.main.async {
            let vc = WellnessKitProductViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    @objc func didTapButtonEssential(sender : UIButton!){
        DispatchQueue.main.async {
            let vc = EssentialOilProductViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.tintColor = .darkText
        }
    }
    
    func applyConstraints(){
        categoriesLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp_topMargin).offset(15)
            make.left.equalTo(view.snp_leftMargin).offset(50)
            make.right.equalTo(view.snp_rightMargin).offset(-50)
        }
        patientCareButton.snp.makeConstraints { make in
            make.top.equalTo(categoriesLabel.snp_bottomMargin).offset(25)
            make.left.equalTo(view.snp_leftMargin).offset(20)
            make.right.equalTo(view.snp_rightMargin).offset(-20)
        }
        wellnessBlendsButton.snp.makeConstraints { make in
            make.top.equalTo(patientCareButton.snp_bottomMargin).offset(20)
            make.left.equalTo(view.snp_leftMargin).offset(20)
            make.right.equalTo(view.snp_rightMargin).offset(-20)
        }
        wellnessDropperButton.snp.makeConstraints { make in
            make.top.equalTo(wellnessBlendsButton.snp_bottomMargin).offset(20)
            make.left.equalTo(view.snp_leftMargin).offset(20)
            make.right.equalTo(view.snp_rightMargin).offset(-20)
        }
        wellnessBlendKit.snp.makeConstraints { make in
            make.top.equalTo(wellnessDropperButton.snp_bottomMargin).offset(20)
            make.left.equalTo(view.snp_leftMargin).offset(20)
            make.right.equalTo(view.snp_rightMargin).offset(-20)
        }
        essentialOils.snp.makeConstraints { make in
            make.top.equalTo(wellnessBlendKit.snp_bottomMargin).offset(20)
            make.left.equalTo(view.snp_leftMargin).offset(20)
            make.right.equalTo(view.snp_rightMargin).offset(-20)
        }
    }
    
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        
        guard let query = searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty,
              let resultsController = searchController.searchResultsController as? SearchResultsViewController else {
                  return
              }
        
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
