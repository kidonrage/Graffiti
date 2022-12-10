//
//  SettingsScreen.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct SettingsScreen: View {
    
    @EnvironmentObject var viewModel: SettingsViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You're \(viewModel.userName)")
                    .padding(.vertical)
                Button("Want to change something?") {
                    viewModel.isModalOpened.toggle()
                }
            }
            .navigationTitle("Settings")
            .sheet(isPresented: $viewModel.isModalOpened) {
                VStack(alignment: .leading) {
                    Text("Enter your new name:").foregroundColor(.gray).font(.system(size: 14))
                    TextField("Name", text:  $viewModel.userName)
                        .textFieldStyle(.roundedBorder)
                }.padding(.horizontal)
            }
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
