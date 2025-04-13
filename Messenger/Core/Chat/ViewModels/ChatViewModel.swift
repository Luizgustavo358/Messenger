//
//  ChatViewModel.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 13/04/25.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messageText = ""
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage() {
        MessageService.sendMessage(messageText, toUser: user)
    }
}
