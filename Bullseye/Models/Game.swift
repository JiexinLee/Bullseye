//
//  Game.swift
//  Bullseye
//
//  Created by Lee on 26/5/2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var round: Int = 1
    var score: Int = 0
    
    func getPoints(sliderValue: Int) -> Int {
        return 100 - abs(target - sliderValue)
    }
}
