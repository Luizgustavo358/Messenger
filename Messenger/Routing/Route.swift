//
//  Route.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 19/04/25.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
