//
//  ContentView.swift
//  desafioApi
//
//  Created by Turma02-17 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = FrutaView()
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView {
                    
                    ForEach(vm.arrayFrutas){fruta in
                        NavigationLink(destination: tela1(e2: fruta)){
                            HStack{
                                Text(fruta.name!)
                                Spacer()
                            }.padding(.top).background(.black)
                            Spacer()
                        }
                        
                    }.onAppear(){
                        vm.fetch()
                    }
                }.background(.black)
            }
        }
    }
}
    
#Preview {
    ContentView()
}

