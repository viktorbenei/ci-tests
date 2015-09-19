//
//  BitriseXcode7SampleUITests.swift
//  BitriseXcode7SampleUITests
//
//  Created by Viktor Benei on 9/16/15.
//  Copyright © 2015 Bitrise. All rights reserved.
//

import XCTest

class BitriseXcode7SampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddAnItemGoToDetailsThenDeleteIt() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let masterNavigationBar = app.navigationBars["Master"]
        masterNavigationBar.buttons["Add"].tap()
        
        let tablesQuery = app.tables
        let firstElemQuery = tablesQuery.cells.elementBoundByIndex(0)
        firstElemQuery.tap()
        app.navigationBars.matchingIdentifier("Detail").buttons["Master"].tap()
        masterNavigationBar.buttons["Edit"].tap()
        
        firstElemQuery.buttons.elementBoundByIndex(0).tap()
        firstElemQuery.buttons["Delete"].tap()
        
        masterNavigationBar.buttons["Done"].tap()
        
        XCTAssert(tablesQuery.cells.count == 0)
    }
}
