//
//  LoginViewModel.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 18/02/25.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
}
