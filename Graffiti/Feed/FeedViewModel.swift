//
//  FeedViewModel.swift
//  Graffiti
//
//  Created by Aura on 10.12.2022.
//

import Foundation

final class FeedViewModel: ObservableObject {
    
    let boards: [Board]
    
    init() {
        self.boards = Array(0..<7).map { Board(id: $0) }
    }
}
