//
//  ButtonView.swift
//  Bullseye
//
//  Created by Lee on 27/5/2022.
//

import SwiftUI

struct ButtonView: View {
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View {
        Button(action: {
            isAlertVisible = true
        }){
            Text("HIT ME".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .foregroundColor(Color.white)
        .background(
            ZStack {
                Color.indigo
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21)
        .alert("Hello There", isPresented: $isAlertVisible, actions: {
            Button("Awesome!"){}
        }, message: {
            let roundedValue: Int = Int(sliderValue.rounded())
            Text("The slider value is \(roundedValue). \n Your socre for this round is \(game.getPoints(sliderValue: roundedValue))")
            }
        )
    }
}
