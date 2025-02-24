//
//  PessoaView.swift
//  ligandoapicomswift
//
//  Created by Turma02-17 on 19/02/25.
//

import Foundation

class PessoaView : ObservableObject{
    @Published var arrayPessoas: [Pessoa] = []
    
    func fetch(){
        let url = "http://127.0.0.1:1880/lerdados"
        let task = URLSession.shared.dataTask(with: URL(string: url)!){
            dados, _, error in
            do{
                
                self.arrayPessoas = try
                JSONDecoder().decode([Pessoa].self, from: dados!)
                print(self.arrayPessoas.count)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    
}
