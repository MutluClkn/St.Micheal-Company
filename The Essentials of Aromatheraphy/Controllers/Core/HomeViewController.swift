//
//  BlogViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit
import Parchment

class HomeViewController: UIViewController {
    
    let patientCareVC = PatientCareProductsViewController()
    let wellnessBlendVC = WellnessBlendProductsViewController()
    let welnessDropperVC = WellnessDropperProductViewController()
    let wellnessKitVC = WellnessKitProductViewController()
    let essentialOilVC = EssentialOilProductViewController()

    private let pagingViewController = ImagePagingViewController()
    
    private let items = [
        ImageItem(index: 0, title: "Patient Care", headerImage: UIImage(named: "breathe_away")!, images: [UIImage(named: "breathe_away")!]),
        ImageItem(index: 1, title: "Wellness Blend", headerImage: UIImage(named: "breathe_away")!, images: [UIImage(named: "breathe_away")!]),
        ImageItem(index: 2, title: "Wellness Dropper", headerImage: UIImage(named: "breathe_away")!, images: [UIImage(named: "breathe_away")!]),
        ImageItem(index: 3, title: "Wellness Kit", headerImage: UIImage(named: "breathe_away")!, images: [UIImage(named: "breathe_away")!]),
        ImageItem(index: 4, title: "Essential Oil", headerImage: UIImage(named: "breathe_away")!, images: [UIImage(named: "breathe_away")!]),
    ]
    
    private let menuInsets = UIEdgeInsets(top: 12, left: 18, bottom: 12, right: 18)
    private let menuItemSize = CGSize(width: 120, height: 100)
    
    private var menuHeight: CGFloat {
        return menuItemSize.height + menuInsets.top + menuInsets.bottom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
        
        pagingViewController.register(ImagePagingCell.self, for: ImageItem.self)
        pagingViewController.menuItemSize = .fixed(width: menuItemSize.width, height: menuItemSize.height)
        pagingViewController.menuItemSpacing = 8
        pagingViewController.menuInsets = menuInsets
        pagingViewController.borderColor = UIColor(white: 0, alpha: 0.1)
        pagingViewController.indicatorColor = .black
        
        pagingViewController.indicatorOptions = .visible(
            height: 1,
            zIndex: Int.max,
            spacing: UIEdgeInsets.zero,
            insets: UIEdgeInsets.zero
        )

        pagingViewController.borderOptions = .visible(
            height: 1,
            zIndex: Int.max - 1,
            insets: UIEdgeInsets(top: 0, left: 18, bottom: 0, right: 18)
        )
        
        let pagingVC = PagingViewController(viewControllers: [
            patientCareVC,
            wellnessBlendVC,
            welnessDropperVC,
            wellnessKitVC,
            essentialOilVC
        ])

        
        addChild(pagingVC)
        view.addSubview(pagingVC.view)
        pagingVC.didMove(toParent: self)
        pagingVC.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          pagingVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
          pagingVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
          pagingVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
          pagingVC.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 85)
        ])
    }

    
    
        // MARK: - St. Micheal Logo on the home page
        private func configureNavBar() {
            var image = UIImage(named: "stmichealLogo")
            image = image?.withRenderingMode(.alwaysOriginal)
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        }
}

//class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//    private let products = ProductCaller.populars()
//
//    // MARK: - Table View
//    private let homeFeedLabel : UITableView = {
//        let table = UITableView(frame: .zero, style: .plain)
//        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
//        return table
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .systemBackground
//        view.addSubview(homeFeedLabel)
//
//
//
//        homeFeedLabel.delegate = self
//        homeFeedLabel.dataSource = self
//
//        configureNavBar()
//
//        let mainHeader = MainHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 400))
//        homeFeedLabel.tableHeaderView = mainHeader
//
//
//    }
//
//
//    // MARK: - St. Micheal Logo on the home page
//    private func configureNavBar() {
//        var image = UIImage(named: "stmichealLogo")
//        image = image?.withRenderingMode(.alwaysOriginal)
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
//    }
//
//
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        homeFeedLabel.frame = view.bounds
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return products.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else{ return UITableViewCell()}
//        cell.titleLabel.text = products[indexPath.row].header
//        cell.productImageView.image = UIImage(named: products[indexPath.row].image ?? "breathe_away")
//        cell.subLabel.text = products[indexPath.row].category
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 50
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        DispatchQueue.main.async {
//            let vc = ProductInfoViewController()
//            vc.titleLabel.text = self.products[indexPath.row].header
//            vc.subLabel.text = self.products[indexPath.row].category
//            vc.productImage.image = UIImage(named: self.products[indexPath.row].image!)
//            vc.productDescription.text = self.products[indexPath.row].description
//            self.navigationController?.pushViewController(vc, animated: true)
//            self.navigationController?.navigationBar.tintColor = .darkText
//        }
//    }
//
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        guard let header = view as? UITableViewHeaderFooterView else {return}
//        header.textLabel?.font = .systemFont(ofSize: 19, weight: .bold)
//        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
//        header.textLabel?.textColor = .darkText
//        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLetter()
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Popular"
//    }
//
//}
