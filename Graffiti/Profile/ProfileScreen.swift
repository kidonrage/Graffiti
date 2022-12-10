//
//  ProfileScreen.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @StateObject var rootRouter: RootRouter
    @EnvironmentObject var feedViewModel: FeedViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Probably just for the homework")
                    .padding(.vertical)
                Button("Go on random board") {
                    rootRouter.currentTabIndex = 1
                    rootRouter.feedRouter.selectedBoardId = feedViewModel.boards.map{ $0.id }.randomElement()
                }
            }.navigationTitle("Profile")
        }
    }
}
