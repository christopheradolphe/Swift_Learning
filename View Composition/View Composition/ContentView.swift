//
//  ContentView.swift
//  View Composition
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.green)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 100){
            CapsuleText(text: "Hello")
            CapsuleText(text: "Second")
        }
    }
}

#Preview {
    ContentView()
}
