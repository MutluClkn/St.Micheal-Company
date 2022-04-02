//
//  BlogViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 26.02.2022.
//

import UIKit


enum Section: Int {
    case essentialOils = 0
    case oilBlends = 1
    case wellnessKits = 2
    case bodyMind = 3
}


class HomeViewController: UIViewController {
    
    let sectionTitles : [String] = ["ESSENTIAL OILS", "OIL BLENDS", "WELLNESS KITS", "BODY & MIND"]
    
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
    
    
    // MARK: - St. Micheal Logo on the home page
    private func configureNavBar() {
        var image = UIImage(named: "stmichealLogo")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedLabel.frame = view.bounds
    }
}
// MARK: - Home page extensions

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else{
            return UITableViewCell()
        }
        
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.font = .systemFont(ofSize: 19, weight: .semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
        header.textLabel?.textColor = .darkText
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLetter()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    //Hiding navigation bar when scrolling down...
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
    
}

extension HomeViewController: CollectionViewTableViewCellDelegate {
    func collectionViewTableViewCellDidTapCell(_ cell: CollectionViewTableViewCell) {
        DispatchQueue.main.async { [weak self] in
            let vc = ProductInfoViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
            self?.navigationController?.navigationBar.tintColor = .darkText
        }
    }
}
