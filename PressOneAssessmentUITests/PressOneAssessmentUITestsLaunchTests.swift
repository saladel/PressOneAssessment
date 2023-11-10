//
//  PressOneAssessmentUITestsLaunchTests.swift
//  PressOneAssessmentUITests
//
//  Created by Adewale Sanusi on 06/11/2023.
//

import XCTest

final class PressOneAssessmentUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
