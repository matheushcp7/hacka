//
//  ContentView.swift
//  Desafio Spotify
//
//  Created by Turma02-17 on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                HStack{
                    Text("19:32")
                    Spacer()
                    Image(systemName: "ellipsis")
                    Image(systemName: "wifi")
                    Image(systemName: "battery.100percent")
                }
                ScrollView{
                    VStack{
                        
                        Image("tartaruga").resizable().frame(width: 200,height: 200)
                        HStack{
                            Text("HackFM").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(Color.white)
                            Spacer()
                        }
                        
                        ForEach(arrayMusicas){e in
                            NavigationLink(destination: tela1(e2: e)){
                                HStack{
                                    
                                    AsyncImage(url: URL(string: e.capa)){image in image
                                            .image?.resizable().frame(width: 50,height: 50)
                                    }
                                    VStack{
                                        HStack{
                                            Text(e.name).foregroundStyle(Color.white).ignoresSafeArea()
                                        }
                                        HStack{
                                            Text(e.artist).foregroundStyle(Color.white).ignoresSafeArea()
                                        }
                                    }
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis").foregroundStyle(Color.white)
                                    
                                    
                                }.padding(.top)
                            }
                        }
                    }
                }.padding()
            }}
            
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
