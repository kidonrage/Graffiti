//
//  SettingsScreen.swift
//  Graffiti
//
//  Created by Aura on 09.12.2022.
//

import SwiftUI

struct SettingsScreen: View {
    
    @State var userName = "Anonymous"
    @State var isModalOpened = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You're \(userName)")
                    .padding(.vertical)
                Button("Want to change something?") {
                    isModalOpened.toggle()
                }
            }
            .navigationTitle("Settings")
            .sheet(isPresented: $isModalOpened) {
                VStack(alignment: .leading) {
                    Text("Enter your new name:").foregroundColor(.gray).font(.system(size: 14))
                    TextField("Name", text:  $userName)
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
