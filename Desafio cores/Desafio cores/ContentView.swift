//
//  ContentView.swift
//  Desafio cores
//
//  Created by Turma02-17 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var km: Float = 0
    @State private var h: Float = 0
    @State private var kmH: Float = 0.0
    @State private var foto: Image = Image(systemName: "arrowshape.down.circle.fill")
    @State private var cor: Color = .gray
        
    var body: some View {
        VStack {
            Text("Digite a Distância (km):")
            TextField("\(km)",value: $km, format: .number )
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(30)
                
            Text("Digite o tempo (h):")
            TextField("\(h)",value: $h, format: .number )
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(30)
            Button("Calcular") {
                kmH = Float(km/h)
                if kmH >= 0 && kmH <= 9.9{
                    foto = Image("tartaruga")
                    cor = Color("Verde Claro")
                    
                }else if kmH >= 10 && kmH <= 29.9{
                    foto = Image("Elefante")
                    cor = Color("Azul Claro")
                }else if kmH >= 30 && kmH <= 69.9{
                    foto = Image("Avestruz")
                    cor = Color("Laranja Claro")
                }else if kmH >= 70 && kmH <= 89.9{
                    foto = Image("Leao")
                    cor = Color("Amarelo Claro")
                }else if kmH >= 90 && kmH <= 130{
                    foto = Image("guepardo")
                    cor = Color("Vermelho Claro")
                }else{
                    foto = Image(systemName: "arrowshape.down.circle.fill")
                    cor = .gray
                }
            }.padding().background(.black).cornerRadius(10)
            Spacer()
            
            Text("\(String(format: "%.2f",kmH)) km/h")
            Spacer()
            foto.resizable().scaledToFit().clipShape(Circle())
            Spacer()
            LegendaView()

        }
        .padding()
        .background(cor)
    }
}
struct LegendaView: View {
    
    
    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Text("TARTATURGA     (0-9.9km/h)").foregroundStyle(Color.white)
                Color("Verde Claro")
                    .clipShape(Circle())
                    .frame(width: 20, height:20)
            }
            HStack{
                Text("ELEFANTE     (10-29.9km/h)").foregroundStyle(Color.white)
                Color("Azul Claro")
                    .clipShape(Circle())
                    .frame(width: 20, height: 20)
            }
            HStack{
                Text("AVESTRUZ     (30-69.9km/h)").foregroundStyle(Color.white)
                Color("Laranja Claro")
                    .clipShape(Circle())
                    .frame(width: 20, height: 20)
                    
            }
            HStack{
                Text("LEAO     (70-89.9km/h)").foregroundStyle(Color.white)
                Color("Amarelo Claro")
                    .clipShape(Circle())
                    .frame(width: 20, height: 20)
                    
            }
            HStack{
                Text("GUEPARDO     (90-130km/h)").foregroundStyle(Color.white)
                Color("Vermelho Claro")
                    .clipShape(Circle())
                    .frame(width: 20, height: 20)
                    
            }

        }.padding().background(Color.black)
            .cornerRadius(10).padding()
    }
}

#Preview {
    ContentView()
}
