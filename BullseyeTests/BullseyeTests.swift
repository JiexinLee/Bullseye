//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Lee on 26/5/2022.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExamplePositive() throws {
        var guess = game.target + 5
        var score = game.getPoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    func testExampleNegative() throws {
        var guess = game.target - 5
        var score = game.getPoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

}
