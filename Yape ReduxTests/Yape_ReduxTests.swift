//
//  Yape_ReduxTests.swift
//  Yape ReduxTests
//
//  Created by marlon arteaga on 11/11/23.
//

import XCTest
@testable import Yape_Redux

final class Yape_ReduxTests: XCTestCase {
    let foods = [Food(id: -1, name: "plato 1", image: "", description: "", latitude: "", longitude: ""),
                 Food(id: -1, name: "plato 2", image: "", description: "", latitude: "", longitude: ""),
                 Food(id: -1, name: "plato 3", image: "", description: "", latitude: "", longitude: ""),
                 Food(id: -1, name: "plato 4", image: "", description: "", latitude: "", longitude: "")]
    
    
    func successFormat() {
        XCTAssertTrue(!SearchText(listFoods: foods, searchText: "p").search().isEmpty)
        XCTAssertTrue(!SearchText(listFoods: foods, searchText: "pl").search().isEmpty)
        XCTAssertTrue(!SearchText(listFoods: foods, searchText: "pla").search().isEmpty)
        XCTAssertTrue(!SearchText(listFoods: foods, searchText: "plat").search().isEmpty)
        
    }
    
    func errorFormat() {
        XCTAssertFalse(SearchText(listFoods: foods, searchText: "x").search().isEmpty)
        XCTAssertFalse(SearchText(listFoods: foods, searchText: "y").search().isEmpty)
        XCTAssertFalse(SearchText(listFoods: foods, searchText: "l").search().isEmpty)
        XCTAssertFalse(SearchText(listFoods: foods, searchText: "s").search().isEmpty)
    }
    
}
