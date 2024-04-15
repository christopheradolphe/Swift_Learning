//
//  ContentView.swift
//  ConditionalModifiers
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    @State private var usedRedText = false
    
    var body: some View {
        Button("Hello, world!") {
            usedRedText.toggle()
        }
        .foregroundColor(usedRedText ? .red : .blue) //Conditional
    }
}

#Preview {
    ContentView()
}
