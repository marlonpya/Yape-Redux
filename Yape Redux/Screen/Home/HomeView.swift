//
//  ContentView.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var store: Store
    @SwiftUI.State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack {
                searchBar
                
                if store.state.loading {
                    ProgressView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    List(store.state.foodsSearch.isEmpty ? store.state.foods : store.state.foodsSearch) { food in
                        NavigationLink(destination: DetailView(food: food)) {
                            Text(food.name ?? "")
                        }
                    }
                }
                
                Button("Get Foods") {
                    self.store.dispatch(action: GetFoodsAction())
                }
            }
        }
        
    }
}

extension HomeView {
    
    var searchBar: some View {
        Text("")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            .disableAutocorrection(true)
            .onChange(of: searchText) { newValue in
                withAnimation {
                    print(newValue)
                    self.store.dispatch(action: SearchAction(searchFoodText: newValue))
                }
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(store)
    }
}
