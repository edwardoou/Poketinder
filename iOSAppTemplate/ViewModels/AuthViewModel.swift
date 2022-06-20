//
//  AuthViewModel.swift
//  iOSAppTemplate
//
//  Created by Alex Ramos on 19/06/22.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @StateObject var appState: AppState = AppState.shared
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { authResponse, error in
            if error == nil {
                self.appState.currentScreen = .main
            }
//            Nota la semana que viene vamos a eventos y vamos hacer que cuando encuentre un error lance una alerte en la vista
        }
    }
    
    func register(name: String, email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResponse, error in
            if error == nil {
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges()
                self.appState.currentScreen = .main
            }
        }
    }
    
}
