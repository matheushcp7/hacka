//
//  File.swift
//  desafio mapa
//
//  Created by Turma02-17 on 13/02/25.
//

import Foundation

struct Location: Hashable{
    let nome: String
    let latitude: Double
    let longitude: Double
    let foto: String
    let descricao: String

}



var arrayCoor = [
    Location(nome: "Belo Horizonte",
             latitude: -19.88434160642159 ,
             longitude: -44.00291102065031,
             
             foto:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Panorama_Mineirão_Pampulha_%28cropped%29.jpg/1920px-Panorama_Mineirão_Pampulha_%28cropped%29.jpg",
            descricao: "Nao conheço BH"),
    Location(nome: "Rio de Janeiro",
             latitude: -22.95206161997133,
             longitude: -43.21143874461218,
             
             foto:"https://lh3.googleusercontent.com/gps-cs-s/AB5caB8PXfuUL8e6M6I-6U5APG4V8H5nimppT9xoPCL1hLq5UczQSpdDCxxQuty_TqUA0xNEw2DLT6_lRyu1U3coj5NXn1Mqn6zicvdRwwmyMmKyThc8EdFXYgGRNx3Hmkjn9JCQf5m3=w524-h208-p-k-no",
            descricao: "Nao conheço RJ"),
]
