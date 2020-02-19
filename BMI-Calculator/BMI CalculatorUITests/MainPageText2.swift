//
//  BMI_CalculatorUITests.swift
//  BMI CalculatorUITests
//
//  Created by Louis Liao on 2020/2/19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import XCTest

class MainPageText2: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        app.launch()
        continueAfterFailure = false
    }

    override func tearDown() {
        app.terminate()
    }

    func testMainPageText() {
        XCTAssertTrue(app.staticTexts["CALCULATE YOUR BMI"].exists == true)
        XCTAssertTrue(app.staticTexts["Height"].exists == true)
        XCTAssertTrue(app.staticTexts["1.5m"].exists == true)
        XCTAssertTrue(app.staticTexts["Weight"].exists == true)
        XCTAssertTrue(app.staticTexts["CALCULATE"].exists == true)
    }
    
    func testDefaultCalculateResult() {
        app.buttons["CALCULATE"].tap()
        XCTAssertTrue(app.staticTexts["YOUR RESULT"].exists == true)
        XCTAssertTrue(app.staticTexts["44.4"].exists == true)
        XCTAssertTrue(app.staticTexts["1.5m"].exists == true)
        XCTAssertTrue(app.staticTexts["Eat less pies"].exists == true)
        XCTAssertTrue(app.staticTexts["RECALCULATE"].exists == true)
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
