//
//  BoardScreen.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct BoardScreen: View {
    
    let boardId: Int
    
    var body: some View {
        Text("This is board \(boardId).\nThere will be something interesting soon").navigationTitle("Board \(boardId)")
    }
}
