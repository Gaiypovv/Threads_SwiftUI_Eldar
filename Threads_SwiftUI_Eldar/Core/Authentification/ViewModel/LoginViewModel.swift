//
//  LoginViewModel.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 23/11/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(
            withEmail: email,
            passwor: password
        )
    }
}


