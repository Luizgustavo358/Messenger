//
//  ActiveNowViewModel.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 19/04/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        let users  = try await UserService.fetchAllUsers(limit: 10)
        self.users = users.filter({ $0.id != currentUid })
    }
}
