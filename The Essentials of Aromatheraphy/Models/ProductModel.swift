//
//  ProductModel.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 4.04.2022.
//

import Foundation

struct ProductResponse {
    let results : [ProductModel]
}

struct ProductModel {
    let description : String?
    let image : String?
    let header : String?
    let category : String?
    let price : String?
}

