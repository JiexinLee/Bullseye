//
//  ContentView.swift
//  Bullseye
//
//  Created by Lee on 26/5/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible: Bool = false
    
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            VStack{
                InstructionView(game: $game)
                SliderView(sliderValue: $sliderValue)
                ButtonView(isAlertVisible: $isAlertVisible, sliderValue: $sliderValue, game: $game)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
