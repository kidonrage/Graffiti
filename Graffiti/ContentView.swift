//
//  ContentView.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var rootRouter = RootRouter()
    
    var body: some View {
        TabView(selection: $rootRouter.currentTabIndex) {
            ProfileScreen(rootRouter: rootRouter)
                .tag(0)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            FeedScreen(rootRouter: rootRouter)
                .tag(1)
                .tabItem {
                    Label("Boards", systemImage: "checkerboard.rectangle")
                }
            SettingsScreen()
                .tag(2)
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .environmentObject(FeedViewModel())
        .environmentObject(SettingsViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FeedViewModel())
            .environmentObject(SettingsViewModel())
    }
}
