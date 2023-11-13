//
//  Yape_ReduxApp.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import SwiftUI

let store = Store(reducer: reducer)

@main
struct Yape_ReduxApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(store)
        }
    }
}
