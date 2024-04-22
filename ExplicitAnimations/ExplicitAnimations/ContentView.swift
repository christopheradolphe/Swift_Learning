//
//  ContentView.swift
//  ExplicitAnimations
//
//  Created by Christopher Adolphe on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)){
                animationAmount += 360
            }
        }
        .padding(50)
        .foregroundColor(.white)
        .background(.green)
        .clipShape(.circle)
        //Explicit animation
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    ContentView()
}
