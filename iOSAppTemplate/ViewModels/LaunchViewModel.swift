//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by Alex Ramos on 13/06/22.
//

import FirebaseAuth

class LaunchViewModel: ObservableObject {
    // instanciar appState
    let appState = AppState.shared
    
    //    Se va a ejecutar cuando se instancie el launchViewModel
    //    Para que pase esto debemos instanciar a launchViewModel en
    //    La vista LaunchView
    init() {
        // Antes de hacer esto se hacen las peticiones iniciales
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .login
    }
}
