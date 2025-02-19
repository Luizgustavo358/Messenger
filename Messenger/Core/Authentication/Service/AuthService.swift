//
//  AuthService.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 18/02/25.
//

import Foundation
import FirebaseAuth

class AuthService {
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: email: \(email)")
        print("DEBUG: password: \(password)")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
