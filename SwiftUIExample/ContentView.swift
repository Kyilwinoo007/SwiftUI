//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by boss1234 on 08/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card6"
    @State private var cpuScore = 0
    @State private var playerScore = 0
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
            
                Button(action: {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    playerCard = "card\(playerRandom)"
                    cpuCard = "card\(cpuRandom)"
                    
                    if(playerRandom > cpuRandom){
                        playerScore += 1
                    }else if (cpuRandom > playerRandom){
                    
                        cpuScore += 1

                    }
                
                }){
                Image("dealbutton")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                }
                Spacer()
              
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding().foregroundColor(.white)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding()
                            .foregroundColor(.white)
                        Text("\(cpuScore)").font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
