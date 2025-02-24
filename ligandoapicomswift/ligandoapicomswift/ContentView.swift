//
//  ContentView.swift
//  ligandoapicomswift
//
//  Created by Turma02-17 on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pv = PessoaView()
    var body: some View {
        
            VStack {
                ForEach(pv.arrayPessoas, id: \.self){
                    p in
                    Text(p.nome)
                   // print(p)
                }
                .padding()
            
        }.onAppear(){
            pv.fetch()
        }
    }
}
#Preview {
    ContentView()
}
