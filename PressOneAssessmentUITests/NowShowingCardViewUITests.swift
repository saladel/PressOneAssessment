//
//  NowShowingCardViewUITests.swift
//  PressOneAssessmentUITests
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import Foundation

import XCTest

class NowShowingCardViewUITests: XCTestCase {

    func testNowShowingCardView() throws {
        // Launch the app
        let app = XCUIApplication()
        app.launch()

        // Scroll to find the NowShowingCardView with the specified movie ID
        _ = 424
        let movieCard = app.staticTexts["Parasite"]//.element(matching: .textView, identifier: "movieTitle").firstMatch
        while !movieCard.exists {
            app.swipeUp()
        }

        // Tap on the NowShowingCardView to navigate to the MovieDetailView
        movieCard.tap()

        // Check if the movie Parasite is displayed on screen
        let movieName = app.staticTexts["Parasite"]
        
        XCTAssertTrue(movieName.exists)
    }
}

