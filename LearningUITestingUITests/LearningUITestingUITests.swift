//
//  LearningUITestingUITests.swift
//  LearningUITestingUITests
//
//  Created by Rommel Rico on 10/10/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import XCTest

class LearningUITestingUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testTapViewDetailWhenSwitchIsOffDoesNothing() {
        let app = XCUIApplication()
        app.switches["1"].tap()
        app.buttons["View Detail"].tap()
        XCTAssertEqual(app.navigationBars.element.identifier, "Menu")
    }
    
    func testTapViewDetailWhenSwitchIsOnNavigatesToDetailViewController() {
        let app = XCUIApplication()
        app.buttons["View Detail"].tap()
        XCTAssertEqual(app.navigationBars.element.identifier, "Detail")
    }
    
    func testTapIncrementButtonIncrementsValueLabel() {
        let app = XCUIApplication()
        app.buttons["View Detail"].tap()
        let incrementButton = app.buttons["Increment Value"]
        let valueLabel = app.staticTexts["Number Value Label"]
        
        for index in 0...9 {
            incrementButton.tap()
            XCTAssertEqual(valueLabel.value as! String, "\(index + 1)")
        }
    }
    
}
