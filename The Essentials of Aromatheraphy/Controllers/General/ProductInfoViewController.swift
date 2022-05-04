//
//  ProductInfoViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 16.03.2022.
//
import UIKit
import CoreData

class ProductInfoViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    func setupScrollView(){
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.delaysContentTouches = false
        scrollView.isExclusiveTouch = false
        
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    let productImage : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "product")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Peppermint St. Michael & Company Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .gray
        label.text = "Essential Oil"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textColor = .white
        label.text = "$9.99"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    let addToFavoritesButton : UIButton = {
        let button = UIButton()
        button.setTitle("Add To Favorites", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkText
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(addToFavoritesButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    let descriptionTitle : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Description"
        
        return label
    }()
    
    let productDescription : UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 18, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.numberOfLines = 0
        text.sizeToFit()
        text.text = """
    Latin name: Mentha piperita
    Country of origin: USA
    Part of the plant: Leaves, stems, flowers
    Extraction method: Steam distilled
    Main biochemical components*: Menthol, menthone, isomenthone
    Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.
    Latin name: Mentha piperita
    Country of origin: USA
    Part of the plant: Leaves, stems, flowers
    Extraction method: Steam distilled
    Main biochemical components*: Menthol, menthone, isomenthone
    Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.
    """
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupScrollView()
        
        contentView.addSubview(productImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subLabel)
        contentView.addSubview(addToFavoritesButton)
        contentView.addSubview(productDescription)
        contentView.addSubview(descriptionTitle)

        
        configureConstraints()
        
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        scrollView.isScrollEnabled = true
    }
    
    @objc func addToFavoritesButtonDidPressed(){
        print("clicked")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let favorities = NSEntityDescription.insertNewObject(forEntityName: "Favorites", into: context)
       // favorities.setValue(productImage.image, forKey: "image")
        favorities.setValue(titleLabel.text!, forKey: "header")
        favorities.setValue(subLabel.text!, forKey: "categories")
        favorities.setValue(priceLabel.text!, forKey: "price")
        favorities.setValue(productDescription.text!, forKey: "descript")

        do{
            try context.save()
            print("saved")
        }catch{
            print("error")
        }
    }
    
    
    func configureConstraints() {
        
        let productImageConstraints = [
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 400)
        ]
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ]
        
        let subLabelConstraints = [
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ]
        
        let addToFavoritesButtonConstraints = [
            
            addToFavoritesButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 30),
            addToFavoritesButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            addToFavoritesButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            addToFavoritesButton.heightAnchor.constraint(equalToConstant: 50),
        ]
        
        
        let descriptionTitleConstraints = [
            descriptionTitle.topAnchor.constraint(equalTo: addToFavoritesButton.bottomAnchor, constant: 30),
            descriptionTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        ]
        
        let productDescriptionConstraints = [
            productDescription.topAnchor.constraint(equalTo: descriptionTitle.bottomAnchor, constant: 30),
            productDescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            productDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            productDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ]
        
        NSLayoutConstraint.activate(productImageConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(subLabelConstraints)
        NSLayoutConstraint.activate(addToFavoritesButtonConstraints)
        NSLayoutConstraint.activate(productDescriptionConstraints)
        NSLayoutConstraint.activate(descriptionTitleConstraints)
        
        
    }
}



