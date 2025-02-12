//
//  tela1.swift
//  Desafio Spotify
//
//  Created by Turma02-17 on 12/02/25.
//

import SwiftUI

struct tela1: View {
    var e2:Song
    var body: some View {
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
                Spacer()
            }
            
            VStack{
                AsyncImage(url: URL(string: e2.capa)){image in image
                        .image?.resizable().frame(width: 200,height: 200)
                }
                HStack{
                    
                    
                    VStack{
                        VStack{
                            HStack{
                                Text(e2.name).foregroundStyle(Color.white).ignoresSafeArea()
                            }
                            HStack{
                                Text(e2.artist).foregroundStyle(Color.white).ignoresSafeArea()
                            }
                        }.padding()
                        
                        HStack(spacing:50){
                            Image(systemName: "shuffle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.white)
                            Image(systemName: "backward.end.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.white)
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.white)
                            Image(systemName: "forward.end.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.white)
                            Image(systemName: "repeat")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.white)
                        }.padding()

                    }
                    
                }.padding(.top)
            }
        }
    }
}

#Preview {
    tela1(e2: Song(id: 6, name:"Numb Encore6", artist:"Linkin Park", capa:"https://upload.wikimedia.org/wikipedia/pt/d/d1/Jay-Z_and_Linkin_Park_-_Numb_Encore_CD_cover.jpg"))
}
