//
//  SearchText.swift
//  Yape Redux
//
//  Created by marlon arteaga on 13/11/23.
//

import Foundation

struct SearchText {
    let listFoods: [Food]
    let searchText: String
    
    init(listFoods: [Food], searchText: String) {
        self.listFoods = listFoods
        self.searchText = searchText
    }
    
    func search() -> [Food] {
        return listFoods.filter{$0.name!.hasPrefix(searchText)}
    }
}
