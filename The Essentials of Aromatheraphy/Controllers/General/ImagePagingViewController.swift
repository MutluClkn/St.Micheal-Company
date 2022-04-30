//
//  ImagePagingViewController.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 30.04.2022.
//

import UIKit
import Parchment

class ImagePagingViewController: PagingViewController {
    override func loadView() {
        view = ImagePagingView(
            options: options,
            collectionView: collectionView,
            pageView: pageViewController.view
        )
    }
}
