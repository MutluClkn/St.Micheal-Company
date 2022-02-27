//
//  Extensions.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 27.02.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
