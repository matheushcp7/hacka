//
//  FrutaView.swift
//  desafioApi
//
//  Created by Turma02-17 on 17/02/25.
//

import Foundation

class FrutaView : ObservableObject{
    @Published var arrayFrutas : [Fruta] = []
    
    func fetch(){
        var url = "https://www.fruityvice.com/api/fruit/all"
        var task = URLSession.shared.dataTask(with: URL(string: url)!){
            dados, _, error in
            do{
                
                self.arrayFrutas = try
                JSONDecoder().decode([Fruta].self, from: dados!)
                print(self.arrayFrutas.count)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    
}
