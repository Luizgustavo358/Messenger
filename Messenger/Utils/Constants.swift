//
//  Constants.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 16/04/25.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let UserCollection     = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
