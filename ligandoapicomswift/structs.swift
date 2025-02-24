//
//  structs.swift
//  ligandoapicomswift
//
//  Created by Turma02-17 on 19/02/25.
//

import Foundation

struct Pessoa: Decodable, Hashable{
    var _id: String
    var _rev: String
    var nome: String
    var idade: Int
}
