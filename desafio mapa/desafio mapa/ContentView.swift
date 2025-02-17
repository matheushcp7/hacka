//
//  ContentView.swift
//  desafio mapa
//
//  Created by Turma02-17 on 13/02/25.
//

import SwiftUI
import Foundation
import MapKit


struct ContentView: View {
    @State private var mostrarSheet = false
       
    
    @State private var position =
    MapCameraPosition.region(
        MKCoordinateRegion(
            center:
                CLLocationCoordinate2D(latitude:
                                        -19.88434160642159,  longitude:
                                        -44.00291102065031),
            span: MKCoordinateSpan(latitudeDelta:20, longitudeDelta:20)
        )
    )
    @State private var teste = arrayCoor[0]
    
    var body: some View {
        VStack {
            ZStack{
                Map(position: $position) {
                    ForEach(arrayCoor, id: \.self){e in
                        Annotation(e.nome, coordinate: CLLocationCoordinate2D(latitude: e.latitude, longitude: e.longitude)) {
                            
                                 
                            Button(action: {
                                teste = e
                                mostrarSheet.toggle()
                            }) {
                                Image(systemName: "record.circle").resizable().frame(width: 30, height: 30)
                                }
                        }
                    }
                }.ignoresSafeArea()
                    .sheet(isPresented: $mostrarSheet) {
                        ZStack {
                            Rectangle()
                                .fill(.yellow)
                                .ignoresSafeArea(.all)
                            VStack{
                                AsyncImage(url: URL(string:teste.foto )){
                                    image in image.image?
                                        .resizable()
                                }.frame(width: 200,height: 200)
                                Text("\(teste.descricao)")
                                    .foregroundColor(.black)
                            }
                        
                    }
                }
                VStack{
                    Picker("Escolha uma localidade", selection: $teste) {
                        
                        ForEach(arrayCoor, id: \.self){e in
                            Text("\(e.nome)")
                            
                            
                        }
                        
                    }.tint(.black).background(.yellow).cornerRadius(10)
                        .pickerStyle(.menu)
                        .accentColor(.black)
                        .onChange(of: teste){
                            withAnimation {
                                position =
                                MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center:
                                            CLLocationCoordinate2D(latitude:
                                                                    teste.latitude,  longitude:
                                                                    teste.longitude),
                                        span: MKCoordinateSpan(latitudeDelta:5, longitudeDelta:5)
                                    )
                                )
                            }
                        }
                    Spacer()
                }
    
            }
        }
        
    }
}

#Preview {
    ContentView()
}
