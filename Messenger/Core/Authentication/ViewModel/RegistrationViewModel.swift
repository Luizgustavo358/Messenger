//
//  RegistrationViewModel.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 18/02/25.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService().createUser(withEmail: email, password: password, fullname: fullname)
    }
}
