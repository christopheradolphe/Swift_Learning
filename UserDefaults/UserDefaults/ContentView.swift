//
//  ContentView.swift
//  UserDefaults
//
//  Created by Christopher Adolphe on 2024-04-29.
//

import SwiftUI

struct ContentView: View {
    //Default value (i.e. start value) will always be 0, "", false
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        VStack {
            Button("Tap Count: \(tapCount)"){
                tapCount += 1
                
                //Writing tapCount to a Tap key
                UserDefaults.standard.set(tapCount, forKey: "Tap")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
