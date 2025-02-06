//
//  ContentView.swift
//  Aula 3
//
//  Created by Turma02-17 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            HStack{
                Text("matheuspena3409")
                    .bold(true)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                
            }
            Divider()
            
            VStack{
            
                HStack{
                    
                    VStack{
                        Circle().foregroundColor(.gray).frame(width: 90)
                    }
                   
                    VStack{
                        HStack(spacing: 25){
                            VStack {
                                HStack{
                                    Text("2")
                                        .bold(true)
                                }
                                HStack{
                                    Text("Posts").font(.none)
                                }
                                
                            }
                            
                            VStack {
                                HStack{
                                    Text("1.189")
                                        .bold(true)
                                }
                                HStack{
                                    Text("Seguidores").font(.none)
                                }
                                
                            }
                            
                            VStack {
                                HStack{
                                    Text("2.192")
                                        .bold(true)
                                }
                                HStack{
                                    Text("Seguindo").font(.none)
                                }
                                
                            }
                        }
                        
                        HStack{
                            Button("Editar Perfil") {
                                
                            }
                        }
                        
                    }
                    Spacer()
                    
                }
                
                    
                }
            VStack(alignment: .leading){
                HStack{
                    Text("Matheus Humberto").bold(true)
                }
                HStack{
                    Text("SI-UFU")
                    Spacer()
                }
            }
            Divider()
            HStack(spacing:60){
            
                VStack{
                    Image(systemName: "calendar")
                        .font(.system(size:40))
                }
                VStack{
                    Image(systemName: "calendar.day.timeline.left")
                        .font(.system(size:40))
                }
                
                VStack{
                    Image(systemName: "person.crop.square").font(.system(size: 40))

                }
                

            }
            Divider()
            VStack{
                HStack{
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                }
                HStack{
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                }
                HStack{
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                    VStack{
                        Rectangle().foregroundStyle(.gray)
                    }
                }
            }
            
                
            }
        
        
        
            
              
        
        .padding()
    }
}

#Preview {
    ContentView()
}
