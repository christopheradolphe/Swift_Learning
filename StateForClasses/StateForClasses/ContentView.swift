//
//  ContentView.swift
//  StateForClasses
//
//  Created by Christopher Adolphe on 2024-04-27.
//

import SwiftUI

@Observable //Need this to change view when class changes
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
