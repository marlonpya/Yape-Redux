//
//  Yape_ReduxUITests.swift
//  Yape ReduxUITests
//
//  Created by marlon arteaga on 11/11/23.
//

import XCTest

final class Yape_ReduxUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        
        continueAfterFailure = false
        app.launch()
    }
    
    func testSearch() {
        let placeholder = app.searchFields["Search"]
        
        XCTAssertTrue(placeholder.exists)
        
        placeholder.tap()
        placeholder.typeText("s")
        placeholder.typeText("o")
        placeholder.typeText("p")
        placeholder.typeText("a")

        
        XCTAssertEqual(placeholder.value as! String, "sopa")
    }
}
