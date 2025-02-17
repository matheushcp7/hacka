//
//  tela1.swift
//  desafioApi
//
//  Created by Turma02-17 on 17/02/25.
//

import Foundation

//
//  tela1.swift
//  Desafio Spotify
//
//  Created by Turma02-17 on 12/02/25.
//

import SwiftUI

struct tela1: View {
    var e2: Fruta
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("Nome: \(e2.name!)")
                    Text("Familia: \(e2.family!)")
                    Text("Ordem: \(e2.order!)")
                    
                }
                Spacer()}.frame(width: 300,height: 300)
           
            
        
    }
    }
}

#Preview {
    tela1(e2: Fruta(name: "Persimmon",
                    id: 52,
                    family: "Ebenaceae",
                    order: "Rosales",
                    genus: "Diospyros",
                    nutritions: Nutri(
                        calories: 81,
                        fat: 0,
                        sugar: 18,
                        carbohydrates: 18,
                        protein: 0)
                   )
    )
}
                    

