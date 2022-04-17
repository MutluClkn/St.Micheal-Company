//
//  ProductCaller.swift
//  The Essentials of Aromatheraphy
//
//  Created by Mutlu Çalkan on 4.04.2022.
//

import Foundation

class ProductCaller {

    
    static func populars() -> [ProductModel]{
        let list = [

        // 0
        ProductModel(description:
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
        ProductModel(description:
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
        ProductModel(description: """
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
                     image: "dgest", header: "Dgest Ease", category: "Wellness Essential Oil Dropper", price: "$9.99" ),
        
        //3
        ProductModel(description:
                        """
St. Michael & Company’s Colds & Sinus

The following essential oils are in Colds & Sinus Blend (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

Ingredients

Grape Seed Oil
Lavender: Tense breathing, muscle spasms, muscle aches, headaches, itching, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger,
Eucalyptus, Globulus: Infections, respiratory congestion, sore throats, fevers, immune support.
Peppermint: Infections, respiratory congestion, fevers, muscle aches, lymphatic support, immune support.
Tea Tree: Infections, respiratory congestion, immune support sleeplessness.
HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
"""
                     , image: "cold_sinus", header: "Cold & Sinus", category: "Wellness Essential Oil Blends", price: "$12.99"),
        
        ]
     return list
    }
    
    static func patientCare() -> [ProductModel]{
        let list = [
            //0
            ProductModel(description:
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
            ProductModel(description:
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
            ProductModel(description: """
            St. Michael & Company’s Dgest Ease Oil blend is designed to enhance the digestive system (constipation and diarrhea). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            - Grape Seed Oil
            - Peppermint
            - Ginger
            - Fennel
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "dgest_ease", header: "Dgest Ease", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            //3
            ProductModel(description: """
            St. Michael & Company’s Energetic Vitality Oil blend is for high performing athletes to boost the immune system, reduce stress, detoxifying and powerful antioxidant

            Ingredients

            ·       Frankincense- Anti-inflammation, anti bacterial

            ·       Lemon-Anti-microbial, anti tumoral, detoxifies the body

            ·       Cypress – Removes toxins, reduces stress, regulates blood flow.

            ·       Myrrh-Kills harmful bacteria, powerful antioxidant

            ·       Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,

            ·       Vetiver- Prevents bacterial infection, speeds up healing

            ·       Lemongrass – antibacterial, antifungal, anti-inflammatory, antioxidant

             

            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "EnergeticVitality-1", header: "Energetic Vitality",category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //4
            ProductModel(description: """
            St. Michael & Company’s Happy Mood Oil blend enhances the mood, joyful and uplifting.  Listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            - Grape Seed Oil
            - Ylang Ylang: Calming, joy, uplifting, encourages self confidence
            - Sweet Orange : Increase appetite, promotes , joy and well-being, energizing
            - Bergamot : Elevate mood and alleviate stress
            - Rose : healing, love, protection, brings unconditional love and giving. comfort and harmony
            - Sandalwood : encourages a meditative state , brings us unity to help us connect with humanity. It has been used, from the earliest times, in spiritual practices. It is one of the Angelic Fragrances.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "HappymMood", header: "Happy Mood", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //5
            ProductModel(description: """
            St. Michael & Company Hydrating Skin Oil blend promotes healthier skin. Moisturizes dry skin with essential oils and hydrates the skin.  The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            - Grape Seed Oil
            - Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
            - Helichrysm- Increases circulation, a greater decrease in breathing rate and blood pressure.
            - Patchouli- Relieves inflammation, sedates hypersentivity
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "Hydratingskin-1", header: "Hydrating Skin", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //6
            ProductModel(description: """
            St. Michael & Company Immune Booster Oil Blend is designed to support the immune and lymphatic systems.  The following essential oils are in Immune Blend (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            - Grape Seed Oil
            - Black Spruce: Fatigue, sluggishness, infections, stress, immune support, adrenal support.
            - Lemon: Infections, poor circulation, mild depression, immune support.
            - Niaouli: Infections, fatigue, sluggishness, immune support.
            - Ylang Ylang, Extra: Physical tension, tense breathing, nervous tension, mild depression, stress.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "ImmuneBooster-1", header: "Immune Booster", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //7
            ProductModel(description: """
            St. Michael & Company’s Mind and Body Calmness Blend relaxes the body and mind when there is so much distractions and uneasiness, providing calmness in the midst of chaos.  The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            - Grape Seed Oil
            - Lavender: Relaxing
            - Frankincense: Alleviate stress and anxiety
            - Cardamon: Regain objectivity, mental stability and self control, brings balance
            - Blue Tansy: Calms and relaxes the senses, making it a great emotional and mental rejuvenator
            - Rosewood:  Increases joyfulness and self-esteem, renews your self-confidence
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "stMichael-mind-body", header: "Mind and Body Calmness", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //8
            ProductModel(description: """
            St. Michael & Company’s Mindful Presence Oil blend’s therapeutic uses are listed for each essential oil relevant to the purpose of this particular blend.

            Ingredients

            Grape seed oil

            - Ylang Ylang: Calming, joy, uplifting, encourages self confidence
            - Lavender: Relaxing
            - Rose: Healing, love, protection, brings unconditional love and giving. comfort and harmony
            - Sandalwood: Encourages a meditative state, brings us unity to help us connect with humanity.
            - Blue Tansy: Boosts courage and fortifies the heart energy, bringing up passion and zest for life, calms stress, anxiety, and tension.
            - Spruce: Clears and relaxes the mind
             

            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "MindfulPresence-1", header: "Mindful Presence", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //9
            ProductModel(description: """
            St. Michael & Company’s Muscle Tiredness Relief Oil blend is anti-inflammatory and relaxes tiring and aching muscles .

             Ingredients

            - Grape seed oil
            - Lavender- Relaxing, anti-inflammatory, relieves sprain
            - Peppermint-Analgesic, anesthetic, anti-galactagogue, anti-phlogistic, antispasmodic, astringent, carminative, cephalic, cholagogue, cordial, decongestant, digestive, emmenagogue, expectorant, febrifuge, hepatic, nervine, stimulant, stomachic, sudorific, vasoconstrictor, vermifuge.
            - Clove- Antimicrobial, to help kill bacteria, pain reliever
            - Ravensara- Analgesic and relaxant
            - Wintergreen- Pain reliever, anti-inflammatory
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "stMichael-muscle", header: "Muscle Tiredness Relief", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //10
            ProductModel(description: """
            St. Michael & Company Sandalwood and Patchouli Oil blend eases the mind, lessen mental fatique and fogginess. This blend  relaxes the mind, enhance memory and increase the ability to focus.

             Ingredients

            - Grape Seed Oil
            - Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant
            - Rose- Relieves stress, increases feelings of calm and relaxation, as well as a greater decrease in breathing rate and blood pressure
            - Blue Tansy – acts as a sedative for nerves and emotional impulses, balances hormones.
            - Spruce-Boosts emotional well-being, improves brain functioning, helps improve immune system.
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "stMichael-sandalwood-2", header: "Sandalwood and Patchouli",category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //11
            ProductModel(description: """
            St. Michael & Company Sleepy Night Oil blend promotes a restful sleep. The following essential oils are in Sleepy Night Oil blend. The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

             Ingredients

            - Grape Seed Oil
            - German Chamomile – Promotes a good night sleep.
            - Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
            - Rose- Relieves stress, increases feelings of calm and relaxation, as well as a greater decrease in breathing rate and blood pressures
            - Sweet Orange -Ease from restlessness
            - Blue Tansy – acts as a sedative for nerves and emotional impulses, balances hormones
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "stMichael-sleep", header: "Sleepy Night", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
            
            //12
            ProductModel(description: """
            St. Michael & Company’s Uplifting the Spirits Oil blend is designed to reduce stressful reactions and negative emotions, promotes a hope for the future, instill positive thoughts and stimulate meditative state of a grateful heart.

            Ingredients

            - Grape Seed Oil
            - Lavender- Relaxing
            - Frankincense- Reduce stress reactions and negative emotions, depression reducing abilities, boost immune system, meditative, helps fight cancer and side effects of chemotherapy
            - Myrrh- Anti-oxidant, fights cancer, antibacterial, enhance spiritual awareness, emotional insight, and concentration
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            - Patchouli- Relieves depression, soothes inflammation, stimulates blood circulation
            - Ylang, Ylang-Increases blood flow, relieves inflammation, heals cardiac problems, lifts someone’s mood
            - Bergamot- Promotes joy, lower blood pressure, prevents infection, relieves stress and anxiety, enhance balance, commonly used oto attract money, wealth or success in general,
            - Rosewood- Boosts memory, analgesic, antibacterial, antidepressant, calmative, stimulant (immune system), tonic, uplifting
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "stMichael-uplifting", header: "Uplifting The Spirits", category: "Patient Care and Care Givers' Blend", price: "$12.99"),
        ]
        return list
    }
    
    static func wellnessBlend() -> [ProductModel]{
        let list = [
            //0
            ProductModel(description: """
METHODS OF USE
Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

INGREDIENTS
Eucalyptus Citriodora: Antiseptic, analgesic, anti-inflammatory, immune support. Calms and refreshes the mind.
Eucalyptus Radiata: Decongestant, antiseptic, analgesic, anti-inflammatory, immune support. Refreshes and uplifts the mind.
Eucalyptus Smithii: Decongestant, antiseptic, analgesic, anti-inflammatory, immune support. Refreshes and uplifts the mind.
Peppermint: Analgesic, antiseptic, antispasmodic, decongestant. Refreshes, uplifts, and clears the mind.
Fractionated Coconut Oil: Emollient plant oil used as a carrier to dilute the essential oils. Soothes, softens, and protects the skin.

 

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
""",
                         image: "breathe_easy",
                         header: "Breathe Easy",
                         category: "Wellness Essential Oil Blends",
                         price: "$0.00"),
            //1
            ProductModel(description: """
St. Michael & Company’s Calmness Wellness Blend provides gentle comfort and support when needed.The following essential oils are in Solace (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

Ingredients
Geranium: Immune support, stress, anxiety, mood swings, mild depression.
Helichrysum: Muscle aches, immune support, mild depression, nervous exhaustion, shock.
Peppermint: Respiratory congestion, muscle spasms, mental fatigue, mental fog, nervous stress, mild depression.
Wintergreen: Muscle aches, muscle cramps, mental fog.
Ylang Ylang Extra: Rapid breathing, tense breathing, general tension, stress, anxiety, sleeplessness, nervous tension, mild depression, anger, shock.

HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "calmness", header: "Calmness", category: "Wellness Essential Oil Blends", price: "$12.99"),
            //2
            ProductModel(description: """
Change St. Michael & Company Wellness Essential Oil Blend  promotes a sense of inner peace and acceptance in times of change. This extraordinary blend combines essential oils that calm, balance, uplift, and stabilize. Together they encourage profound feelings of comfort and well-being.

Our 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of fractionated coconut oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use.

Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

METHODS OF USE
Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

INGREDIENTS
Bergamot, FCF: Sedative. Calms yet uplifts the mind, helps balance mood swings, promotes a sense of well-being.
Black Spruce: Immune support. Calms, grounds, and restores the mind.
Frankincense: Immune support. Slows and deepens the breath. Calms, relaxes, and comforts the mind.
Geranium: Circulatory tonic, general tonic, immune support. Helps balance mood swings, calms, and uplifts the mind. Promotes a sense of well-being.
Ho Wood: Calms anxiety, tension, stress and promotes feelings of peace.
Hyssop: Immune support. Strengthens and uplifts the mind. Promotes mental clarity and focus.
Melissa: Nervine, sedative. Calms, comforts, and uplifts the mind. Promotes a sense of well-being.
Myrrh: Immune support. Calms, grounds, and soothes the mind.
Rose: Sedative. Soothes, calms, and uplifts the mind. Promotes a sense of well-being.
Sandalwood: Sedative. Profoundly calms, relaxes, and stabilizes the mind. Promotes a sense of well-being.
Fractionated Coconut Oil: Emollient plant oil used as a carrier to dilute the essential oils. Soothes, softens, and protects the skin.

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
"""
                         , image: "change", header: "Change", category: "Wellness Essential Oil Blends", price: "$12.99"),
            //3
            ProductModel(description:
                            """
    St. Michael & Company’s Colds & Sinus

    The following essential oils are in Colds & Sinus Blend (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

    Ingredients

    Grape Seed Oil
    Lavender: Tense breathing, muscle spasms, muscle aches, headaches, itching, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger,
    Eucalyptus, Globulus: Infections, respiratory congestion, sore throats, fevers, immune support.
    Peppermint: Infections, respiratory congestion, fevers, muscle aches, lymphatic support, immune support.
    Tea Tree: Infections, respiratory congestion, immune support sleeplessness.
    HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

    These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

    Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
    """
                         , image: "cold_sinus", header: "Cold & Sinus", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //4
            ProductModel(description: """
            St. Michael & Company’s Energize oil blend is designed to uplift the spirits and reduce fatigue. The following essential oils are in Energize Up (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

             

            Ingredients

            Bergamot, FCF: Immune support, mild depression, stress, anxiety, nervousness, mood swings, apathy.
            Lavender: Stress, tense breathing, nervous tension, anxiety, nervous exhaustion, mood swings, anger.
            Lemon: Immune support, mental fog, mental clarity, mild depression.
            Lemongrass: Stress, anxiety, nervous exhaustion, mental fatigue, mental fog, mild depression.
            Melissa: Rapid breathing, anxiety, mild depression, tension, fear, crisis, shock, anger.
            Orange, Sweet: Nervous tension, mild depression, worry, mental fatigue.
            Peppermint: Mental fatigue, mental fog, anger, nervous stress, mild depression, shock.

            Methods of Use

             

            Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
            Easy alternatives when you don’t have a diffuser:
            Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

             

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
            """
                         , image: "Energizee", header: "Energize", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //5
            ProductModel(description: """
            Immune Booster oil blend is designed to support the immune and lymphatic systems.

            Ingredients
            Black Spruce: Fatigue, sluggishness, infections, stress, immune support, adrenal support.
            Cistus: Infections, lymphatic support.
            Lemon: Infections, poor circulation, mild depression, immune support.
            Niaouli: Infections, fatigue, sluggishness, immune support.
            Oregano: Infections, sluggishness, immune support.
            Plai: Infections, poor circulation, stress.
            Thyme, ct. linalol: Infections, poor circulation, stress, immune support.
            Ylang Ylang, Extra: Physical tension, tense breathing, nervous tension, mild depression, stress.

            Methods of Use
            After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

            Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

            Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
            Easy alternatives when you don’t have a diffuser:
            Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

            Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
            (Avoid touching your nose with the tissue.)

            Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

            The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
            """
                         , image: "ImmuneBooster", header: "Immune Booster", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //5
            ProductModel(description: """
            St. Michael & Company’s Calmness & Tranquility

            The following essential oils are in Calmness & Tranquility Blend (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            Grape Seed Oil
            Lavender: Tense breathing, muscle spasms, muscle aches, headaches, itching, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger, sleeplessness.
            Orange, Sweet: Nervous tension, mild depression, worry, mental fatigue.
            Patchouli: Tense breathing, rapid breathing, nervous exhaustion, stress, mood swings, mild depression.
            Bergamot: antiseptic, antispasmodic, and analgesic (pain-relieving). muscle aches, stress, tension, anxiety, fear.
            Ylang Ylang Extra: Rapid breathing, tense breathing, general tension, stress, anxiety, sleeplessness, nervous tension, mild depression, anger, shock. Seed Oil
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.


            """
                         , image: "Peace", header: "Peace", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //6
            ProductModel(description: """
            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

            REFRESHING MINT – (Blend contains: Peppermint, Eucalyptus, Wintergreen)
            """
                         , image: "RefreshingMind", header: "Refreshing Mint", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //7
            ProductModel(description: """
            St. Michael & Company’s Refreshing Mint Oil blend  relieves nausea, headache and migraine, indigestion, pain, reduce inflammation, and relaxes the muscles .

            Ingredients

            Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
            Wintergreen- Act like a natural analgesic (pain reducer), antiarthritic, antiseptic and astringent.
            Eucalyptus – Reduces inflammation, relieves pain
            Peppermint – Cooling effect relieves stress, increases feelings of calm and relaxation, as well as a greater decrease in breathing rate and blood pressure,,
            Fennel-Sedates inflammation
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "RefreshingMint", header: "Refreshing Mint", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //8
            ProductModel(description: """
            Respiratory St. Michael & Company Wellness Oil blend is designed to ease congestion, reduce the risk of infection, and support the immune system. This exceptional blend also contains antispasmodic essential oils to relax the chest muscles and support deep breathing, while uplifting and refreshing the mind.

            Our 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of fractionated coconut oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use.

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

            METHODS OF USE
            Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

            INGREDIENTS
            Black Spruce: Decongestant, immune support. Calms, grounds, and restores the mind.
            Eucalyptus Citriodora: Antiseptic, anti-inflammatory, immune support. Calms and refreshes the mind.
            Eucalyptus Globulus: Decongestant, antiseptic, immune support. Refreshes and uplifts the mind.
            Eucalyptus Radiata: Decongestant, antiseptic, anti-inflammatory, immune support. Refreshes and uplifts the mind.
            Lavender: Decongestant, antiseptic, adaptogenic. Helps balance mood swings, promotes a sense of well-being.
            Marjoram, Sweet: Antiseptic, antispasmodic, sedative. Calms and strengthens the mind.
            Myrtle, Lemon: Decongestant, antiseptic. Uplifts and refreshes the mind.
            Peppermint: Antiseptic, antispasmodic, decongestant. Refreshes, uplifts, and clears the mind.
            Fractionated Coconut Oil: Emollient plant oil used as a carrier to dilute the essential oils. Soothes, softens, and protects the skin.

             

            The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

            For external use only. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
            """
                         , image: "Respiratory", header: "Respiratory", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //9
            ProductModel(description: """
            Sleeptime oil blend promotes relaxation and comfort before bedtime to encourage a restful and rejuvenating sleep. This soothing blend combines Lavender, long known for its gentle, sedative action; calming and uplifting Mandarin, excellent for easing symptoms of mild depression; Sandalwood and Chamomile to support quieting a restless mind.

            Our 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of fractionated coconut oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use.

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

            METHODS OF USE
            Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

            INGREDIENTS
            Chamomile, Roman: Sleeplessness, stress, tension, anxiety, anger, fear, worry, shock, impatience.
            Lavender: Sleeplessness, stress nervous tension, anxiety, nervous exhaustion, mood swings, anger.
            Mandarin, Red: Sleeplessness, mild depression, stress, anxiety, tension, restlessness.
            Orange Sweet: Nervous tension, mild depression, worry, mental fatigue.
            Sandalwood: Sleeplessness, anxiety, tension, stress, sense of isolation, emotional instability.
            Fractionated Coconut Oil: Emollient plant oil used as a carrier to dilute the essential oils. Soothes, softens, and protects the skin.

             

            The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

            For external use only. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
            """
                         , image: "Sleeptime", header: "Sleeptime", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //10
            ProductModel(description: """
            ST MICHAEL MUSCLE SOOTHE BLEND  RELEASES PHYSICAL AND EMOTIONAL TENSION, RELAXES TIGHT MUSCLES.  IT IS PAIN RELIEVING AND BALANCING.
            INGREDIENTS
            Chamomile, Roman: Muscle aches, muscle spasms, muscle tension, mild depression, over-sensitivity, emotional discomfort, worry, shock, tension, anxiety, stress.
            Geranium: Muscle aches, poor circulation, mild depression, imbalance, mood swings.
            Lavender: Muscle aches, muscle spasms, sinus congestion, inflammation, mild depression, emotional discomfort, tension, anxiety, stress.
            Peppermint: Muscle aches, muscle spasms, headaches, inflammation, nerve pain, sinus congestion, feeling over-heated, mild depression, anger.
            Fractionated Coconut Oil: Emollient plant oil used as a carrier to dilute the essential oils. Soothes, softens, and protects the skin.

            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)

            This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "MuscleSoothe", header: "Muscle Soothe", category: "Wellness Essential Oil Blends", price: "$12.99"),
            
            //11
            ProductModel(description: """
            Uplifting Oil blend is designed to gently uplift, balance, and refresh the emotions, while promoting a sense of well-being.

            The following essential oils are in Uplifting (alphabetical order). The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            INGREDIENTS
            Bergamot, FCF: Mild depression, mood swings, stress, anxiety, tension, apathy.
            Clary Sage: Stress, tension, mild depression, fear, panic, lack of sense of well-being.
            Frankincense: Tense breathing, rapid breathing, shallow breathing, anxiety, stress, nervous tension, restless mind.
            Lime: Mild depression, apathy, anxiety, mental fatigue.

            METHODS OF USE
            After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

            Bath: Mix 4-8 drops of essential oil in 1 teaspoon of carrier oil, such as fractionated coconut oil. (You can also add the essential oil to 1/2 cup of whole milk or heavy cream.) Set aside. If you have muscle aches, add 1-2 cups Epsom or Dead sea salts. Fill the tub with warm water and immerse yourself. Add the essential oil mixture and swirl the water around you. Massage your skin and breathe in the aroma. Remain in the tub for 10-15 minutes.

            Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

            Body Lotion: Add 6-30 drops of essential oil in 1 ounce of fragrance-free, natural moisturizing lotion. Apply to your skin, especially after a shower or bath.

            Body Oil: Mix 6-30 drops of essential oil in 1 ounce of carrier, such as fractionated coconut oil or sweet almond oil. Apply to your skin, especially after a shower or bath.

            Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
            Easy alternatives when you don’t have a diffuser:
            Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

            Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
            (Avoid touching your nose with the tissue.)

            Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

            Perfume: Mix 10-20 drops of essential oil in 1 tablespoon of fractionated coconut oil. Apply to pulse points, such as inner wrists, behind knees, or backs of ankles.

            Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

            The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
            """
                         , image: "Uplifting", header: "Uplifting", category: "Wellness Essential Oil Blends", price: "$12.99"),
        ]
        return list
    }
    
    static func wellnessBlendKit() -> [ProductModel]{
        let list = [
            //0
            ProductModel(description: """
Citrus & Mint St. Michael Wellness Essential Oil Blends 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of grape seed  oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use.

Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

METHODS OF USE
Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

 

This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
"""
                         , image: "citrusandmint", header: "Citrus & Mint", category: "Wellness Essential Oil Blend Kit", price: "25.99"),
            
            //1
            ProductModel(description: """
            ENERGIZING WELLNESS PACK St. Michael’s Energizing Body & Mind Wellness Pack includes four 10 ml roll on of essential oil blends re-energize your wellness .

             

            • Change -Calming. Balancing. Rejuvenating. Brings mind stillness in midst of change. Balances the moods. (Blend contains: Bergamot, Black Spruce, Frankincense, Geranium, Vetiver, Lemon, Lavender, Myrrh, Rose, Sandalwood)
            • Energizing -Energize the senses. Revitalize the body. Renew your motivation to be more productive and enthusiastic to get through the day. Mood enhancer. (Blend contains: Lavender Lemongrass, Cinnamon, Orange Sweet, Peppermint)
            • Immune Booster – Supports the immune and lymphatic systems. Great for fatigue immune support and adrenal support. (Blend contains: Eucalyptus, Lemon, Peppermint, Oregano, Tea Tree, Clove, Ylang Ylang)
            • Uplifting– Gently uplifts, balances, and refreshes the emotions, while promoting a sense of well-being. Works for stress, tension, mild depression, fear, panic, lack of sense of well-being. (Blend contains: Bergamot, Lemon, Rose, Lime, Ylang Ylang, Peppermint, Frankincense)

             

            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

             

            Methods of Use

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

             

             

            This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "energizing", header: "Energizing Mind and Body Wellness Pack", category: "Wellness Essential Oil Blend Kit", price: "$39.99"),
            
            //2
            ProductModel(description: """
            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

            Body And Mind Wellness Blend Kits

            GRATITUDE AND BLESSING WELLNESS PACK St. Michael’s Gratitude and Blessings Wellness Pack includes four 10 ml roll on of essential oil blends.  Greet each day with gratitude. May we share our blessings to inspires other and to be truly be mindfully present as we uplift others.

            • Courage – Calms, relaxes, and settles the mind and body to move forward. Instills courage and mental clarity. Brings confidence and concentration. (Blend contains: Black Spruce, Blue Tansy, Frankincense, Cypress, Geranium, Ylang Ylang, Rose, Peppermint)
            • Harmony – Creates a sense of inner calm and stillness. Relieves tense breathing, muscle spasms, muscle aches, headaches, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger, sleeplessness. (Blend contains: Lavender: Sweet Orange, Patchouli, Ylang Ylang Extra)
            • Tranquility – Instills calm, comfort, and stabilize, while enveloping the psyche in tranquility and peace. Relieves anxiety, stress, nervous tension, fear, restless mind, and emotional tension. Blend contains: Lavender, Roman Chamomile, Frankincense, Rose, Ylang Ylang Extra.
            • Uplifting– Gently uplifts, balances, and refreshes the emotions, while promoting a sense of well-being. Works for stress, tension, mild depression, fear, panic, lack of sense of well-being. (Blend contains: Bergamot, Lemon, Rose, Lime, Ylang Ylang, Peppermint, Frankincense)
            """
                         , image: "gratitude_blessing", header: "Gratitude & Blessing", category: "Wellness Essential Oil Blend Kit", price: "$39.99"),
            
            //3
            ProductModel(description: """
            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

            Body And Mind Wellness Blend Kits

            HARMONY WELLNESS PACK St. Michael’s Harmony Body & Mind Wellness Pack includes four 10 ml roll on of essential oil blends to inspire harmony in the body and mind, creating that tranquility and peace from within.

             

            • Balance: Provides hormonal balance. Eases discomfort of drastic mood changes, irritability, anxiety, and stress. (Blend contains: Roman Chamomile, Clary Sage, Geranium, Lavender, Rose)
            • Harmony – Creates a sense of inner calm and stillness. Relieves tense breathing, muscle spasms, muscle aches, headaches, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger, sleeplessness. (Blend contains: Lavender: Sweet Orange, Patchouli, Ylang Ylang Extra)
            • Relax – Provides gentle comfort and support when needed. Relieves stress, anxiety, tension, mood Swings and mild depression, muscle aches, muscle spasms, mental fatigue, and nervous exhaustion. (Blend contains: Geranium, Helichrysum, German Chamomile, Lavender, Ylang Ylang Extra.)
            • Tranquility – Instills calm, comfort, and stabilize, while enveloping the psyche in tranquility and peace. Relieves anxiety, stress, nervous tension, fear, restless mind, and emotional tension. Blend contains: Lavender, Roman Chamomile, Frankincense, Rose, Ylang Ylang Extra.
            """
                         , image: "Harmony", header: "Harmony", category: "Wellness Essential Oil Blend Kit", price: "$39.99"),
            
            //4
            ProductModel(description: """
            Mgraine Ease St. Michael Wellness Essential Oil Blends 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of grape seed  oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use.

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

            METHODS OF USE
            Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

             

            This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "Mgraine_Ease", header: "Mgraine Ease", category: "Wellness Essential Oil Blend Kit", price: "$12.99"),
            
            //5
            ProductModel(description: """
            Mindfully Present St- Michael Mind & Body Wellness Essential Oil Pack

            Mindfully Present St- Michael Mind & Body Wellness Essential Oil Pack 10 ml roll-ons are 100 percent pure essential oils in a 10 percent dilution of grape seed oil. No need to mix or measure. The cobalt blue glass bottles protect the product from deterioration and the roller-ball applicator allows for easy, convenient, and safe topical use. (Pack includes Mindful Presence, Uplifting the Spirits, Mind & Body Calmness)

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

            METHODS OF USE
            Anytime: Apply directly on your chest, torso, back of neck, shoulders, and bottom of feet. You can also apply a small amount in the palm of your hands; cup your hands over your nose and inhale the aroma.

             

            This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "Mindfully_Present", header: "Mindfully Present", category: "Wellness Essential Oil Blend Kit", price: "$25.99"),
            
            //6
            ProductModel(description: """
            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

            Body And Mind Wellness Blend Kits

            RELAXATION WELLNESS PACK St. Michael’s Relaxation Body & Mind Wellness Pack includes four 10 ml roll on of essential oil blends that provide gentle comfort and support when needed.

            • Harmony – Creates a sense of inner calm and stillness. Relieves tense breathing, muscle spasms, muscle aches, headaches, stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger, sleeplessness. (Blend contains: Lavender: Sweet Orange, Patchouli, Ylang Ylang Extra)

            • Relax – Provides gentle comfort and support when needed. Relieves stress, anxiety, tension, mood Swings and mild depression, muscle aches, muscle spasms, mental fatigue, and nervous exhaustion. (Blend contains: Geranium, Helichrysum, German Chamomile, Lavender, Ylang Ylang Extra.)

            • Sleep time – Relaxes the body. Calms the mind for a restful sleep. (Blend contains German Chamomile, Lavender, Blue Tansy, Frankincense, Rose)

            • Tranquility – Instills calm, comfort, and stabilize, while enveloping the psyche in tranquility and peace. Relieves anxiety, stress, nervous tension, fear, restless mind, and emotional tension. Blend contains: Lavender, Roman Chamomile, Frankincense, Rose, Ylang Ylang Extra.
            """
                         , image: "Relaxation", header: "Relaxation – Mind and Body Wellness Pack", category: "Wellness Essential Oil Blend Kit", price: "$39.99"),
            
            //7
            ProductModel(description: """
            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

            Body And Mind Wellness Blend Kits

            RELIEF WELLNESS PACK St. Michael’s Relief Wellness Pack includes four 10 ml roll on of essential oil blends that bring comfort and relief in body aches and pains.

            • Breathe Away– Supports comfortable, relaxed breathing. Antibacterial. Decongestant. Headache relief. Supports immune systems. Antibacterial. Fights infections. Eases cold, flu, bronchitis, sore throat, and fever. (Blend contains: Ginger, Lemon, Radiata Eucalyptus, Peppermint, Wintergreen.)
            • Immune Booster – Supports the immune and lymphatic systems. Great for fatigue immune support and adrenal support. (Blend contains: Eucalyptus, Lemon, Peppermint, Oregano, Tea Tree, Clove, Ylang Ylang)
            • Muscle Tiredness – Relaxes the muscle aches and spams. Relieves poor circulations. Anti-inflammation. (Blend contains: Helichrysum, Frankincense, Lavender, Peppermint, Wintergreen, Lemongrass)
            • Sinus Relief – Relieves colds and sinus allergies. Supports the immune system. Comforts symptoms of sore throats, fever, respiratory congestion, muscle aches, infections, and lymphatic support. (Blend contains: Radiate Eucalyptus, Lavender, Birch, Peppermint, Clove)
            """
                         , image: "Relief_Mind", header: "Relief - Mind and Body Wellness Kit", category: "Wellness Essential Oil Blend Kit", price: "$39.99"),
            
            //8
            ProductModel(description: """
            RESTFUL WELLNESS PACK St. Michael’s Relief Wellness Pack includes four 10 ml roll on of essential oil blends for a restful sleep.

             

            ·      Sleepy Night – German Chamomile, Lavender,  Rose, Sweet Orange, Blue Tansy

            ·      Mind & Body Calmness- Lavender, Frankincense, Cardamon, Blue Tansy, Rosewood

            ·      Mindful Presence – Ylang Ylang, Lavender, Rose, Sandalwood, Blue Tansy, Spruce

             

            Top Quality Assured Products

            St. Michael & Company Wellness Oil Blend Roll-Ons are a convenient and easy way to enjoy essential oils.  Carefully selected from ISO certified sources worldwide, these oil blends are safe, pleasant, organic, 100% pure and of the highest quality.  Essential oils are concentrated and potent, so certain precautions should be taken. Store essential oils at steady room temperature away from the bright sunlight. Please visit our website to see our full line of essential oil single notes, blends, and other aromatherapy products.

             

             

            Methods of Use

            Roll-ons are easy to use. Unscrew the cap, tip the bottle, and roll the blend directly on your skin. Keep Roll-on next to your bed or computer, in your bathroom, kitchen or car, tucked into your office desk drawer or purse. Enjoy the benefits of aromatherapy everywhere you go!

             

             This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "Restful", header: "Restful - Mind and Body Wellness Kit", category: "Wellness Essential Oil Blend Kit", price: "$25.99"),
            
            //9 - patientcare
            ProductModel(description: """
            Hope and Healing

            St. Michael & Company began in 2018, inspired by the angelic name of St. Michael the Archangel, where the company’s name is derived.

            Our company’s philosophy is focused on two principles – cancer care and alternatives to a healthier life.  Hope and healing one person at a time.

            Cancer patients experience high volumes of concentrated chemical running through the body and essential oils can be one of the safest options to manage the caustic effects of chemo and significantly beneficial in their everyday regimen. Of course, there is science to aromatherapy.

            Essential oils are derived from plants and considered to be all natural, just like any molecules.

            Blue Kit:

            HAPPY MOOD – (Blend contains Ylang Ylang, Sweet Orange, Rose Absolute, Sandalwood)

            CITRUS DELIGHT – (Blend contains: Sweet Orange, Lime, Lemon, Bergamot)

            DGEST EASE – (Blends contains: Peppermint, Ginger, and Fennel)

            MUSCLE TIREDNESS RELIEF – (Blend contains: Peppermint, Helichrysum, Clove, Lavender, Wintergreen)

            This information is not intended to diagnose, treat, cure, or prevent any disease. Essential oils are for external use and not for ingestion. These products are not intended to diagnose, treat, cure, or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.


            """
                         , image: "patientCareKit", header: "Patient Care & Care Givers Wellness Kit – Blue", category: "Patient Care and Care-Givers Wellness Kit", price: "$25.99")
        
        ]
        return list
    }
    
    static func wellnessDropper() -> [ProductModel]{
        let list = [
            //0
            ProductModel(description: """
St. Michael & Company Citrus Delight Oil blend is designed to energize and create a refreshing scent. It is citrus scent to enhance a happier emotion and increase appetite.

 Ingredients

·         Grape Seed Oil

·         Sweet Orange: increase appetite, promotes, joy and well-being, energizing

·         Lime: revitalizing body and spirit, protection in one’s space, creating clarity – very helpful when on has an important decision to make.

·         Lemon: a spiritual cleanser, attract positivity, opens one to the fruitfulness of life.

·         Bergamot: brings peace and joy to the soul, amplifies energy, joy, and light.

HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
"""
                         , image: "citrusDelight", header: "Citrus Delight 10 ml", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            //1
            ProductModel(description: """
            St. Michael & Company’s Dgest Ease Oil blend is designed to enhance the digestive system (constipation and diarrhea).
            Ingredients

            Peppermint,
            Ginger
            Fennel
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "Dgesteease", header: "Dgest Ease", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //2
            ProductModel(description: """
            St. Michael & Company’s Energetic Vitality Oil blend is for high performing athletes to boost the immune system, reduce stress, detoxifying and powerful antioxidant

            Ingredients

            ·       Frankincense- Anti-inflammation, anti bacterial

            ·       Lemon-Anti-microbial, anti tumoral, detoxifies the body

            ·       Cypress – Removes toxins, reduces stress, regulates blood flow.

            ·       Myrrh-Kills harmful bacteria, powerful antioxidant

            ·       Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,

            ·       Vetiver- Prevents bacterial infection, speeds up healing

            ·       Lemongrass – antibacterial, antifungal, anti-inflammatory, antioxidant

             

            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "EnergeticVitality", header: "Energetic Vitality", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //3
            ProductModel(description: """
            St. Michael & Company’s Happy Mood Oil blend is designed to enhance joy and happiness. The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            - Grape Seed Oil
            - Ylang Ylang: Calming, joy, uplifting, encourages self confidence
            - Sweet Orange : increase appetite, promotes , joy and well-being, energizing
            - Rose : healing, love, protection, brings unconditional love and giving. comfort and harmony
            - Sandalwood : encourages a meditative state , brings us unity to help us connect with humanity. It has been used, from the earliest times, in spiritual practices. It is one of the Angelic Fragrances.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "HappyMood", header: "Happy Mood", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //4
            ProductModel(description: """
            St. Michael & Company Hydrating Skin Oil blend is designed to promote a healthier skin. Moisturize dry skin with essential oils that hydrates the skin.  The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            Ingredients

            Grape Seed Oil
            avLavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
              Helichrysm- Increases circulation, a greater decrease in breathing rate and blood pressure.
              Patchouli- Relieves inflammation, sedates hypersentivity
               Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.
            """
                         , image: "HydratingSkin", header: "Hydrating Skin", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            //5
            ProductModel(description: """
            St. Michael & Company’s Mindful Presence Oil blend promotes to be “in the moment” and be mindful to enhance joy and happiness.

             

            Ingredients

            ·       Ylang Ylang: Calming, joy, uplifting, encourages self confidence

            ·       Lavender: Relaxing

            ·       Rose : healing, love, protection, brings unconditional love and giving. comfort and harmony

            ·       Sandalwood : encourages a meditative state , brings us unity to help us connect with humanity.

            ·       Blue Tansy:boosts courage and fortifies the heart energy, bringing up passion and zest for life, calms stress, anxiety, and tension.

            ·       Spruce: Clears and relaxes the mind

             

            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

             

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "MindfulPresence", header: "Mindful Presence", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //6
            ProductModel(description: """
            Muscle Tiredness Relieve Oil blend is anti-inflammatory and relaxes tiring and aching muscles .

            Ingredients

            ·       Lavender- Relaxing, anti-inflammatory, relieves sprain

            ·       Peppermint-Analgesic, anesthetic, anti-galactagogue, anti-phlogistic, antispasmodic, astringent, carminative, cephalic, cholagogue, cordial, decongestant, digestive, emmenagogue, expectorant, febrifuge, hepatic, nervine, stimulant, stomachic, sudorific, vasoconstrictor, vermifuge.

            ·       Clove- Antimicrobial, to help kill bacteria, pain reliever

            ·       Wintergreen- Pain reliever, anti-inflammatory

            ·       Ravensara- Antidepressant, antispasmodic, relaxant, and tonic substance, anti-oxidant, anti-inflammatory

             

            HOW TO USE:

            For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

             

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

             

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.

            This information is not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion.  These products are not intended to diagnose, treat, cure or prevent any disease. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products.
            """
                         , image: "MuscleTirednessRelief", header: "Muscle Tiredness Relief", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //7
            ProductModel(description: """
            St. Michael & Company’s Sandalwood and Patchoul Oil blend is intended to ease the mind, lessen mental fatique and fogginess .

            INGREDIENTS
            - Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
            - Rose- Relieves stress, increases feelings of calm and relaxation, as well as a greater decrease in breathing rate and blood pressure.
            - Blue Tansy – acts as a sedative for nerves and emotional impulses, balances hormones.
            - Spruce-Boosts emotional well-being, improves brain functioning, helps improve immune system.
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "Sandalwood", header: "Sandalwood and Patchouli", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //8
            ProductModel(description: """
            St. Michael & Company Sleepy Night Oil blend is designed to promote a restful sleep. The following essential oils are in Sleepy Night Oil blend. The therapeutic uses that are listed for each essential oil are those that are relevant to the purpose of this particular blend.

            INGREDIENTS
            - Lavender- Reduces anxiety and emotional stress, improves brain function, antioxidant,
            - Rose- Relieves stress, increases feelings of calm and relaxation, as well as a greater decrease in breathing rate and blood pressure,,
            - Blue Tansy – acts as a sedative for nerves and emotional impulses, balances hormones
            - Spruce-Boosts emotional well-being, improves brain functioning, helps improve immune system
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "Sleepy", header: "Sleepy Night", category: "Wellness Essential Oil Dropper", price: "$9.99"),
            
            //9
            ProductModel(description: """
            St. Michael & Company’s Uplifting the Spirits Oil blend is designed to reduce stressful reactions and negative emotions, promotes a hope for the future, instill positive thoughts and stimulate meditative state of a grateful heart.

            INGREDIENTS
            - Lavender- Relaxing,
            - Frankincense- Reduce stress reactions and negative emotions, depression reducing abilities, boost immune system, meditative, helps fight cancer and side effects of chemotherapy
            - Myrrh- Anti-oxidant, fights cancer, antibacterial, enhance spiritual awareness, emotional insight, and concentration
            - Sandalwood- sedates inflammation, anxiety, fear, stress, and restlessness, induces relaxation, calmness, concentration, inner vision, and positive thoughts, improves memory and stimulates your concentration power.
            - Patchouli- Relieves depression, soothes inflammation, stimulates blood circulation
            - Ylang, Ylang-Increases blood flow, relieves inflammation, heals cardiac problems, lifts someone’s mood
            - Bergamot- Promotes joy, lower blood pressure, prevents infection, relieves stress and anxiety, enhance balance, commonly used oto attract money, wealth or success in general,
            - Rosewood- Boosts memory, analgesic, antibacterial, antidepressant, calmative, stimulant (immune system), tonic, uplifting
            HOW TO USE: For external use only. For adults, we suggest applying to wrists, neck, below the ears or other pulse and acupressure points as needed. You may re-apply during the day up to 4 times. Avoid applying near the ears, eyes, mouth, or any mucus membrane. If oil gets on your fingers, wash thoroughly with soap and water.

            These products are not intended to diagnose, treat, cure or prevent any disease. Essential oils are for external use and not for ingestion. If you are pregnant, nursing, taking medication, or have a medical condition, consult your physician before using these products. Keep out of the reach of children.  Always consult a qualified aromatherapist before using essential oils with babies and children.

            or external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

            Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.
            """
                         , image: "Uplifting-1", header: "Uplifting the Spirits", category: "Wellness Essential Oil Dropper", price: "$9.99"),
        ]
        return list
    }
    
    static func essentialOils() -> [ProductModel]{
        let list = [
            //0
            ProductModel(description: """
Latin name: Eucalyptus radiata
Country of origin: Australia
Part of the plant: Leaves
Obtained by: Steam distilled
Main biochemical components*: 1,8 cineole, alpha-terpineol, alpha-terpinyl acetate
Properties: Decongestant, expectorant, analgesic, antibacterial, antiseptic, antispasmodic, antiviral, anti-inflammatory.

WHY USE
Physical uses: Respiratory congestion, colds, flu, sinusitis, bronchitis, sore throats, infections (viral, bacterial), fevers, muscle aches, stiff joints, inflammation, headaches, immune support.

Skin care uses: Minor skin infections (viral, bacterial), insect bites, cold sores, devitalized skin condition.

Psychological uses: Mild depression, apathy.

Subtle uses: Clears energy blocks. Inspires.

Notes: Avoid Eucalyptus, Radiata during pregnancy and nursing.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

Which One to Choose – Eucalyptus Citriodora, Eucalyptus Globulus, Eucalyptus Radiata or Eucalyptus Smithii?
Similarities: All eucalyptus essential oils work well for respiratory congestion and infection, immune support and muscle aches. They all share a strong, refreshing, and camphoraceous aroma.

Differences: Eucalyptus Globulus has a fresh and earthy aroma and is known for its strength. Eucalyptus Radiata is enjoyed for its milder, sweet aroma and is a good option for longer-term use. Eucalyptus Citriodora has a fresh, lemony aroma used for air disinfecting and is a good choice for nighttime use since it’s less stimulating. Eucalyptus Smithii is used for prevention and treatment of muscle and joint aches. Due to its mildness it’s also often preferred for children and the elderly.

METHODS OF USE
After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Chest Rub: Mix 5-15 drops of essential oil in 1 tablespoon of carrier oil or fragrance-free, natural lotion, apply to upper chest and upper back.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

 

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "eucalyptus", header: "Eucalyptus", category: "Essential Oils", price: "$9.99"),
            
            //1
            ProductModel(description: """
Latin name: Lavandula angustifolia
Country of origin: France
Part of the plant: Flowering tops
Obtained by: Steam distilled
Main biochemical components*: Linalyl acetate, linalol, (E)-anethole
Properties: Analgesic, anti-depressant, antibacterial, sedative, deodorant, antiphlogistic.

WHY USE
Physical uses: Respiratory congestion, bronchitis, laryngitis, colds, flu, tense breathing, muscle spasms, muscle aches, muscle cramps, infections (bacterial, viral) headaches, inflammation, lymphatic support.

Skin care uses: Imbalanced oil production, small wounds, bruises, burns, sunburn, insect bites and stings, minor skin infections (bacterial, viral), irritations, inflammation, itching, blemishes, eczema, skin tonic.

Psychological uses: Stress, nervous tension, anxiety, nervous exhaustion, mood swings, anger, sleeplessness.

Subtle uses: Balances the energy centers. Calms. Clears energy blocks. Brings in positive energy.

Notes: Lavender is one of the most versatile essential oils. The French, high-altitude Lavender is one of the most prized lavenders, known for its exquisite aroma and superb relaxing qualities.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

Which One to Choose Lavender (E. Europe), Lavender (France), or Lavender Spike?
Similarities: All true lavenders (Lavandula angustifolia) have a fresh, sweet, soft, herbaceous, floral aroma. Lavender (E. Europe) and Lavender (France) are somewhat interchangeable in their uses being versatile for skin care and the nervous system.

Differences: Lavender (E. Europe) has a rich yet mellow floral, fruity scent. Since it’s lower in cost, it’s a popular option for skin and beauty care or household uses. Lavender (France) is grown at higher altitudes and has a slightly more intense floral note with balsamic undertones. Its therapeutic qualities make it a good choice for treating inflammation, insomnia, reducing stress and for cuts and scrapes. Lavender Spike is distinct for its fresh, sharp, camphoraceous aroma. This makes it ideal for respiratory issues as well as muscle conditions and immune support.

METHODS OF USE
Add to Products: Essential oils can be added to pre-made, fragrance-free products to enhance their performance. Add 4-8 drops to 2 ounces of facial moisturizer; 6-30 drops to 1 ounces of lotion; 10-20 drops to 8 ounces of shampoo; 15-30 drops to 8 ounces of conditioner.

After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath: Mix 4-8 drops of essential oil in 1 teaspoon of carrier oil, such as fractionated coconut oil. (You can also add the essential oil to 1/2 cup of whole milk or heavy cream.) Set aside. If you have muscle aches, add 1-2 cups Epsom or Dead sea salts. Fill the tub with warm water and immerse yourself. Add the essential oil mixture and swirl the water around you. Massage your skin and breathe in the aroma. Remain in the tub for 10-15 minutes.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Body Lotion: Add 6-30 drops of essential oil in 1 ounce of fragrance-free, natural moisturizing lotion. Apply to your skin, especially after a shower or bath.

Body Oil: Mix 6-30 drops of essential oil in 1 ounce of carrier, such as fractionated coconut oil or sweet almond oil. Apply to your skin, especially after a shower or bath.

Chest Rub: Mix 5-15 drops of essential oil in 1 tablespoon of carrier oil or fragrance-free, natural lotion, apply to upper chest and upper back.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Compress, Facial: Fill the sink with warm water. Add 1-3 drops of essential oil in the water and agitate the water to mix well. Lay in a clean washcloth, wring, and apply to face, with eyes closed, holding in place for 5-10 seconds. Repeat dipping, wringing, and applying –  3 times. Pat dry.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Facial Oil: Mix 2-5 drops of essential oil in 1 ounce of carrier such as jojoba, calendula, or rose hip seed oil.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Perfume: Mix 10-20 drops of essential oil in 1 tablespoon of fractionated coconut oil. Apply to pulse points, such as inner wrists, behind knees, or backs of ankles.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Skin Mist: Mix 10-40 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Scalp Oil: Mix 12-24 drops of essential oil in 2 ounces of fractionated coconut oil or jojoba, or a blend of both. Store in a glass bottle with a cap. Use approximately 1 teaspoon to massage into scalp at night. Shampoo in the morning.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

 

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "Lavender", header: "Lavender", category: "Essential Oils", price: "$9.99"),
            
            //2
            ProductModel(description: """
Latin name: Citrus limonum
Country of origin: Italy
Part of the plant: Rinds
Obtained by: Cold pressed
Main biochemical components*: Limonene, beta-pinene, gamma-terpinene
Properties: Antibacterial, antirheumatic, antiseptic, antidepressant, antifungal, diuretic, insecticide, tonic.

WHY USE
Physical uses: Infections (bacterial, fungal, viral), sinusitis, colds, flu, sore throat, poor circulation, immune support.

Skin care uses: Congested skin, oily skin, blemishes, minor skin infections (bacterial, fungal, viral), imbalanced oil production, warts, skin tonic.

Psychological uses: Mental fog, mental clarity, mild depression.

Subtle uses: Clears energy blocks. Clears emotional confusion. Promotes mental clarity and objectivity.

Notes: Use Lemon in a 1-5% dilution. Do not use directly on the skin when you are going to be in the sun.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

METHODS OF USE
After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath: Mix 4-8 drops of essential oil in 1 teaspoon of carrier oil, such as fractionated coconut oil. (You can also add the essential oil to 1/2 cup of whole milk or heavy cream.) Set aside. If you have muscle aches, add 1-2 cups Epsom or Dead sea salts. Fill the tub with warm water and immerse yourself. Add the essential oil mixture and swirl the water around you. Massage your skin and breathe in the aroma. Remain in the tub for 10-15 minutes.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Chest Rub: Mix 5-15 drops of essential oil in 1 tablespoon of carrier oil or fragrance-free, natural lotion, apply to upper chest and upper back.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Compress, Facial: Fill the sink with warm water. Add 1-3 drops of essential oil to the water and agitate the water to mix well. Lay in a clean washcloth, wring, and apply to face, with eyes closed, holding in place for 5-10 seconds. Repeat dipping, wringing, and applying – 3 times. Pat dry.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "Lemon", header: "Lemon", category: "Essential Oils", price: "$9.99"),
            
            //3
            ProductModel(description: """
Latin name: Citrus sinensis
Country of origin: Portugal
Part of the plant: Rinds
Extraction method: Cold pressed
Main biochemical components*: Limonene, delta-3-carene, linalol
Properties: Antiseptic digestive, sedative, stimulant (digestive and lymphatic) tonic, antidepressant.

WHY USE
Physical uses: Poor circulation, poor digestion, water retention, constipation, infections (bacterial, fungal), lymphatic support.

Skin care uses: Dull skin, oily skin, puffy skin, dry skin, wrinkles, rough skin, poor circulation, minor skin infections (bacterial, fungal), skin tonic.

Psychological uses: Nervous tension, mild depression, worry, mental fatigue.

Subtle uses: Brings in positive energy. Promotes joy.

Notes: Use Orange, Sweet in a 1-5% dilution. Do not use directly on the skin when you are going to be in the sun.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

Which One to Choose Orange Wild or Orange Sweet?
Similarities: Both orange essential oils have a refreshing, sweet citrus aroma. They can be used interchangeably for lymphatic support, uplifting moods, and refreshing the air.

Differences: Orange Wild is popular for its rich, sweet-tart aroma. Orange Sweet enjoys a slightly sweeter and tangier smell.

METHODS OF USE
After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath: Mix 4-8 drops of essential oil in 1 teaspoon of carrier oil, such as fractionated coconut oil. (You can also add the essential oil to 1/2 cup of whole milk or heavy cream.) Set aside. If you have muscle aches, add 1-2 cups Epsom or Dead sea salts. Fill the tub with warm water and immerse yourself. Add the essential oil mixture and swirl the water around you. Massage your skin and breathe in the aroma. Remain in the tub for 10-15 minutes.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Compress, Facial: Fill the sink with warm water. Add 1-3 drops of essential oil to the water and agitate the water to mix well. Lay in a clean washcloth, wring, and apply to face, with eyes closed, holding in place for 5-10 seconds. Repeat dipping, wringing, and applying – 3 times. Pat dry.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

 

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "Orange", header: "Orange", category: "Essential Oils", price: "$9.99"),
            
            //4
            ProductModel(description: """
Latin name: Mentha piperita
Country of origin: USA
Part of the plant: Leaves, stems, flowers
Extraction method: Steam distilled
Main biochemical components*: Menthol, menthone, isomenthone
Properties: Analgesic, anti-inflammatory, decongestant, stimulant, antispasmodic, astringent.

WHY USE
Physical uses: Poor digestion, indigestion, nausea, stomach aches, motion sickness, respiratory congestion, sinusitis, coughs, infections (bacterial, viral), muscle aches, muscle spasms, sciatica, stiff joints, menstrual cramps, headaches, feeling over-heated, nerve pain, sluggishness, lymphatic support, immune support.

Skin care uses: Dermatitis, blemishes, minor skin infections (bacterial, viral), itching, greasy skin, over-heated skin, rough skin, insect bites and stings.

Psychological uses: Mental fatigue, mental fog, inability to concentrate, anger, nervous stress, mild depression, shock.

Subtle uses: Promotes clarity in communication. Supports a healthy self-esteem. Promotes inspiration and insights.

Notes: Use Peppermint in a 1-5% dilution. May be sensitizing. Avoid during pregnancy and nursing. Do not use with children under 3 years of age.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

METHODS OF USE
After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Chest Rub: Mix 5-15 drops of essential oil in 1 tablespoon of carrier oil or fragrance-free, natural lotion, apply to upper chest and upper back.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Skin Mist: Mix 10-40 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

 

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "Peppermint", header: "Peppermint", category: "Essential Oils", price: "$9.99"),
            
            //5
            ProductModel(description: """
Latin name: Melaleuca alternifolia
Country of origin: Australia
Part of the plant: Leaves and twigs
Obtained by: Steam distilled
Main biochemical components*: Terpinen-4-ol, gamma-terpinene, alpha-terpinene
Properties: Antiseptic, antispasmodic, digestive, sedative, calming.

WHY USE
Physical uses: Infections (bacterial, viral, fungal), colds, flu, sinusitis, bronchitis, tonsillitis, poor circulation, sore throats, immune support.

Skin care uses: Minor skin infections (bacterial, viral, fungal), oily skin, blemishes, athlete’s foot, nail fungus, cold sores, insect bites and stings, small wounds, dandruff, ringworm, warts.

Psychological uses: Nervous exhaustion, mild depression, mental fatigue.

Subtle uses: Energizes. Promotes confidence.

Notes: Tea Tree is known for its gentle yet powerful, full-spectrum, anti-infectious properties and its support for the immune system.

*Chemical components: Chemical component percentages may vary. Essential 3 offers a Certificate of Analysis for review.

METHODS OF USE
After Shower: After showering, while your skin is still wet, put 1-3 drops of essential oil in the palm of one of your hands and rub your hands together. Quickly and evenly spread the essential oil over your legs, arms, and torso. Avoid sensitive-skin areas. For maximum skin hydration and to seal in moisture, apply cream, lotion or body oil directly to damp skin.

Bath: Mix 4-8 drops of essential oil in 1 teaspoon of carrier oil, such as fractionated coconut oil. (You can also add the essential oil to 1/2 cup of whole milk or heavy cream.) Set aside. If you have muscle aches, add 1-2 cups Epsom or Dead sea salts. Fill the tub with warm water and immerse yourself. Add the essential oil mixture and swirl the water around you. Massage your skin and breathe in the aroma. Remain in the tub for 10-15 minutes.

Bath, Foot: Mix 1-3 drops of essential oil in 1/2 teaspoon of carrier oil, such as fractionated coconut oil. Set aside. Fill a tub (deep enough to cover your feet and ankles) with warm water. Add the essential oil mixture, stir well, and immerse your feet for 10-15 minutes. Breathe in the aroma and massage your feet.

Chest Rub: Mix 5-15 drops of essential oil in 1 tablespoon of carrier oil or fragrance-free, natural lotion, apply to upper chest and upper back.

Compress: Fill a basin with water. (Warm water relaxes and increases circulation. Cool water invigorates and relieves inflammation.) Add 3-5 drops of essential oil and briskly stir. Lay in a washcloth, wring, and apply to the area in need for approximately 1-5 minutes. Dip, wring, and apply 3 more times.

Compress, Facial: Fill the sink with warm water. Add 1-3 drops of essential oil to the water and agitate the water to mix well. Lay in a clean washcloth, wring, and apply to face, with eyes closed, holding in place for 5-10 seconds. Repeat dipping, wringing, and applying – 3 times. Pat dry.

Diffusion: Follow diffuser manufacturer’s instructions to fill the air with therapeutic aroma.
Easy alternatives when you don’t have a diffuser:
Place 2-4 drops of essential oil on several cotton balls or tissues; place nearby or tuck into the grate of fan or air vent in your home or car.

Inhalation: Put 1-3 drops of essential oil on a tissue and inhale the aroma through your nose. Pause and inhale again.
(Avoid touching your nose with the tissue.)

Inhalation, Hot Water: Add 1-2 drops of essential oil to a small bowl of hot water. Keeping your eyes tightly closed, lean over the bowl and breathe in deeply yet gently, pause then exhale. Continue for 30 seconds. Inhale through your nose for respiratory or sinus conditions and through your mouth for throat issues or coughs. Repeat as desired.

Massage: Mix 6-30 drops of essential oil in 1 ounce of carrier oil or fragrance-free, natural lotion.

Room Mist: Mix 30-60 drops of essential oil in 4 ounces of water in a mister bottle. Shake well before each use and avoid getting the mist into the eyes.

Scalp Oil: Mix 12-24 drops of essential oil in 2 ounces of fractionated coconut oil or jojoba, or a blend of both. Store in a glass bottle with a cap. Use approximately 1 teaspoon to massage into scalp at night. Shampoo in the morning.

Spot Application: Mix 1-4 drops of essential oil in 1 teaspoon of carrier oil or aloe vera and apply to the area in need.

The Methods of Use are general guidelines. Individual sensitivities, desired results, and the characteristics of the essential oil(s) used must all be considered. Adjust methods and proportions accordingly.

For external use only. Always dilute before use. Keep out of reach of children. Avoid eyes and other sensitive areas. Keep away from direct flame – essential oils are flammable. If pregnant or nursing, consult a physician before using essential oils. Store at room temperature and avoid direct sunlight.

Aromatherapy: The use of natural, aromatic substances, known as essential oils, to enhance the well-being of body, mind, and spirit. (This statement has not been evaluated by the FDA. No information provided is intended to diagnose, treat, cure or prevent any disease.)
"""
                         , image: "tea_tree", header: "Tea Tree", category: "Essential Oils", price: "$9.99"),
        ]
        return list
    }
}

