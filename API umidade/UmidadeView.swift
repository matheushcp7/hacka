//
//  UmidadeView.swift
//  API umidade
//
//  Created by Turma02-17 on 24/02/25.
//

import Foundation

class UmidadeView : ObservableObject{
    @Published var arrayUmidade : [Umidade] = []
    
    func fetch(){
        var url = "http://192.168.128.83:1880/lerdados"
        var task = URLSession.shared.dataTask(with: URL(string: url)!){
            dados, _, error in
            do{
                
                self.arrayUmidade = try
                JSONDecoder().decode([Umidade].self, from: dados!)
                print(self.arrayUmidade.count)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
