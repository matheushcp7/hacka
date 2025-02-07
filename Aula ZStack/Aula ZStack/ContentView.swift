//
//  ContentView.swift
//  Aula ZStack
//
//  Created by Turma02-17 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var nomeUsuario = ""
    
    var body: some View {
        
        
        
        
        
        ZStack(){
            
            Image("Captura de Tela 2023-01-18 às 22.59.48").resizable()
                .scaleEffect(CGSize(width: 1.5, height: 1.5))
                .opacity(0.1)
            
            
            
            VStack{
                Text("Bem vindo, \(nomeUsuario)").font(.title)
                TextField("Nome:", text: $nomeUsuario)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 150)
                Image("truck")
                    .resizable()
                    .frame(width: 250,height: 125)
                
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert("ALERTA!\nVocê irá iniciar o desafio da aula agora", isPresented: $showingAlert) {
                    Button("Vamos lá!", role: .cancel) { }
                }
                
            }
            
        }
        
    }
    
    
    
}

#Preview {
    ContentView()
}
