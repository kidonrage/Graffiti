//
//  FeedScreen.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct FeedScreen: View {
    
    @StateObject var rootRouter: RootRouter
    @EnvironmentObject var viewModel: FeedViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.boards) { board in
                NavigationLink(
                    destination: BoardScreen(boardId: board.id),
                    tag: board.id,
                    selection: $rootRouter.feedRouter.selectedBoardId
                ) {
                    Text("Board \(board.id)")
                }
            }.navigationTitle("Boards")
        }
        
    }
}

struct FeedScreen_Previews: PreviewProvider {
    static var previews: some View {
        FeedScreen(rootRouter: RootRouter())
    }
}
