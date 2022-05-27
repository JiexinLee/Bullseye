//
//  InstructionView.swift
//  Bullseye
//
//  Created by Lee on 27/5/2022.
//

import SwiftUI

struct InstructionView: View {
    @Binding var game: Game
    var body: some View {
        VStack{
            InstructionTextView(text: instruction)
                .padding(.leading,30.0)
                .padding(.trailing, 30.0)
            TargetTextView(text: "\(game.target)")
        }
    }
}

struct InstructionTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
        .kerning(2.0)
        .foregroundColor(Color("TextColor"))
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(2.0)
        .font(.footnote)
    }
}

struct TargetTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.black)
            .font(.largeTitle)
            .lineSpacing(-1.0)
    }
}

struct LabelView: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
    }
}
