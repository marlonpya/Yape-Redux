//
//  Store.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import Foundation

class Store: ObservableObject {
    
    var reducer: Reducer
    @Published private (set) var state: State
    
    init(reducer: @escaping Reducer, state: State = State()) {
        self.reducer = reducer
        self.state = state
    }
    
    func dispatch(action: Action) {
        DispatchQueue.main.async {
            self.state = self.reducer(self.state, action)
        }
    }
    
}

func reducer(state: State, action: Action) -> State {
    var state = state
    
    switch action {
    case _ as LoadAction:
        state.loading = true
        
    case let action as SetFoodsAction:
        state.foods = action.foods
        state.loading = false
        
    case let action as SearchAction:
        state.foodsSearch = SearchText(listFoods: state.foods, searchText: action.searchFoodText).search()
        
    default:
        break
    }
    
    return state
}
