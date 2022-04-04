//
//  ProductInfoBank.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 4.04.2022.
//

import Foundation

class ProductInfoBank {
    var list = [ProductInfo]()
    
    init(){
        
        // MARK: - Category: Patient Care and Care Givers' Blend
        // 0
        list.append(ProductInfo(productDescription:
"""
St. Michael & Company’s Breathe Away

The following essential oils are in Breathe Easy Blend (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

Ingredients

·         Grape Seed Oil
·         Lemon: immune support, anxiety, stress, nervous tension, mild depression.
·         Eucalyptus, Radiata: Respiratory congestion, immune support, mild depression, apathy.
·         Wintergreen: Analgesic and anti-inflammatory .
·         Peppermint: Respiratory congestion, muscle spasms, mental fatigue, mental fog, nervous stress, mild depression.
HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
""",
                                selectedImageName: "breathe_away",
                                productHeader: "Breathe Away",
                                productCategory: "Patient Care and Care Givers' Blend",
                                productPrice: "$12.99"))
        
        // 1
        list.append(ProductInfo(productDescription:
"""
St. Michael & Company Citrus Delight Oil blend energizing and refreshing. It is delightfully a combination of  citrus essential oils.

 Ingredients

·         Grape Seed Oil

·         Sweet Orange: increase appetite, promotes, joy and well-being, energizing

·         Lime: revitalizing body and spirit, protection in one’s space, creating clarity – very helpful when on has an important decision to make.

·         Lemon: a spiritual cleanser, attract positivity, opens one to the fruitfulness of life.

·         Bergamot: brings peace and joy to the soul, amplifies energy, joy, and light.

HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
""",
                                selectedImageName: "citrus_delight",
                                productHeader: "Citrus Delight",
                                productCategory: "Patient Care and Care Givers' Blend",
                                productPrice: "$12.99"))
    }
}

