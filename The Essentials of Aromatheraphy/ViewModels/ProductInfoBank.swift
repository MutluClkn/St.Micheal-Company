//
//  ProductInfoBank.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 4.04.2022.
//

import Foundation

class ProductInfoBank {
    static func getProduct() -> [ProductInfo]{
    
    let list = [
        
        // MARK: - Category: Patient Care and Care Givers' Blend
        // 0
        ProductInfo(description:
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
                                image: "breathe_away",
                                header: "Breathe Away",
                                category: "Patient Care and Care Givers' Blend",
                    price: "$12.99"),
        
        // 1
        ProductInfo(description:
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
                                image: "citrus_delight",
                                header: "Citrus Delight",
                                category: "Patient Care and Care Givers' Blend",
                                price: "$12.99"),
        //2
        ProductInfo(description: """
St. Michael & Company’s Dgest Ease Oil blend is designed to enhance the digestive system (constipation and diarrhea).
Ingredients

Peppermint,
Ginger
Fennel
HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
""",
                    image: "dgest", header: "Dgest Ease", category: "Wellness Essential Oil Dropper", price: "$9.99")
    
    ]
        
        return list
        }
}

