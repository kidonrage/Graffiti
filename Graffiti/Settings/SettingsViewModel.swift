//
//  SettingsViewModel.swift
//  Graffiti
//
//  Created by Aura on 10.12.2022.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    
    @Published var userName = "Anonymous"
    @Published var isModalOpened = false
}
