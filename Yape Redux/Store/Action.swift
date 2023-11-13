//
//  Action.swift
//  Yape Redux
//
//  Created by marlon arteaga on 12/11/23.
//

import Foundation

typealias Reducer = (State, Action) -> State

protocol Action { }

struct GetFoodsAction: Action {
    
    init() {
        store.dispatch(action: LoadAction())
        FoodRepositoryService.shared.getFoods { result in
            switch result {
            case .success(let foods):
                store.dispatch(action: SetFoodsAction(foods: foods))
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}

struct LoadAction: Action { }

struct SearchAction: Action {
    let searchFoodText: String
    
    init(searchFoodText: String) {
        self.searchFoodText = searchFoodText
    }
}

struct SetFoodsAction: Action {
    let foods: [Food]
    
    init(foods: [Food]) {
        self.foods = foods
    }
    
}
