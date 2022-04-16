//
//  MenuViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 16.04.2022.
//

import UIKit
import SnapKit

class MenuViewController: UIViewController {
    
    private let patientCareButton : UIButton = {
        let button = UIButton()
        return button
    }()
    private let wellnessDropperButton : UIButton = {
        let button = UIButton()
        return button
    }()
    private let wellnessBlendsButton : UIButton = {
        let button = UIButton()
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(patientCareButton)
        view.addSubview(wellnessDropperButton)
        view.addSubview(wellnessBlendsButton)

        constraints()
    }
    
    func constraints(){
        patientCareButton.snp.makeConstraints { make in
            
        }
        
        wellnessDropperButton.snp.makeConstraints { make in
            <#code#>
        }
        wellnessBlendsButton.snp.makeConstraints { make in
            <#code#>
        }
    }


}
