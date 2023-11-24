//
//  ExploreViewModel.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 24/11/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUser() }
    }
    
    @MainActor
    private func fetchUser() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
