//
//  ContentView.swift
//  desafioApi
//
//  Created by Turma02-17 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = UmidadeView()
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView {
                    
                    ForEach(vm.arrayUmidade, id: \.self){e in
                        Text(e.umidade)
                        
                    }
                }.background(.white)
            }.onAppear(){
                vm.fetch()
            }
        }
    }
}
    
#Preview {
    ContentView()
}

