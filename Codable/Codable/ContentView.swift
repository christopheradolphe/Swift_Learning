//
//  ContentView.swift
//  Codable
//
//  Created by Christopher Adolphe on 2024-04-30.
//

import SwiftUI

//To write complex data to UserDefaults, have to encode
//UserDefaults can not set class at once to a key, need to encode

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Chris", lastName: "Adolphe")
    
    var body: some View {
        VStack {
            Button("Save User") {
                //Encode to write ; Decode to write
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.set(data, forKey: "UserData")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
