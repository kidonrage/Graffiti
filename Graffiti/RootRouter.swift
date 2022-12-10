//
//  RootRouter.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import Foundation

final class RootRouter: ObservableObject {
    
    @Published var currentTabIndex = 0
    @Published var feedRouter = FeedRouter()
}
