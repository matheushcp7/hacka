//
//  structs.swift
//  desafioApi
//
//  Created by Turma02-17 on 17/02/25.
//

import Foundation

struct Fruta: Codable, Identifiable{
    
    var name:String?
   // Name of the fruit
    var id:Int
    var family:String?
    //Family of the Fruit.
    var order:String?
    //Order of the Fruit.
    var genus:String?
    //Genus of the Fruit.
    var nutritions:Nutri
    //Nutritions of the Fruit.
    
}
struct Nutri: Codable{
    var calories:Double?
    //Calories of the Fruit (per 100g) in gramm.
    
    var fat:Double?
    //Fat of the Fruit (per 100g) in gramm.

    var sugar:Double?
    //Sugar of the Fruit (per 100g) in gramm.
    
    var carbohydrates:Double?
    //Carbohydrates of the Fruit (per 100g) in gramm.

    var protein:Double?
    //Protein of the Fruit (per 100g) in gramm.


    
}


