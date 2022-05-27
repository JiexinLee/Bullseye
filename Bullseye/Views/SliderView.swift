//
//  SliderView.swift
//  Bullseye
//
//  Created by Lee on 27/5/2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack{
            LabelView(text: leftSlider)
            Slider(value: $sliderValue, in: 1...100)
            LabelView(text: rightSlider)
        }.padding()
    }
}

