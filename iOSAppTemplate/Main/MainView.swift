//
//  MainView.swift
//  iOSAppTemplate
//
//  Created by Alex Ramos on 19/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // Para poder crear un TabView
        // Nota si queremos mas de un elemento solo hay que ponerlo abajo
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }.accentColor(.pink)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
