//
//  ContentView.swift
//  Messenger
//
//  Created by Luiz Gustavo Bragança dos Santos on 16/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Group {
                if viewModel.userSession != nil {
                    InboxView()
                } else {
                    LoginView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
