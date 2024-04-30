//
//  ContentView.swift
//  @AppStorage
//
//  Created by Christopher Adolphe on 2024-04-29.
//

import SwiftUI

struct ContentView: View {
    //Stored in app as tapCount but variable is tapCounts
    //Up to 128kB can be stored in app with tapCounts
    @AppStorage("tapCount") private var tapCounts = 0
    
    var body: some View {
        VStack {
            Button("Tap me: \(tapCounts)") {
                tapCounts += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
