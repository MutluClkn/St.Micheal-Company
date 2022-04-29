//
//  ImageItem.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 29.04.2022.
//

import UIKit
import Parchment

struct ImageItem: PagingItem, Hashable, Comparable {
    let index: Int
    let title: String
    let headerImage: UIImage
    let images: [UIImage]

    static func < (lhs: ImageItem, rhs: ImageItem) -> Bool {
        return lhs.index < rhs.index
    }
}
