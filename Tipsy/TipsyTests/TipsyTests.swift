//
//  TipsyTests.swift
//  TipsyTests
//
//  Created by 廖政豪 on 2019/11/12.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import XCTest
@testable import Tipsy

class TipsyTests: XCTestCase {
    
    var SUT: CalculatorViewController!

    override func setUp() {
        super.setUp()
        SUT = CalculatorViewController()
    }

    override func tearDown() {
        SUT = nil
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
