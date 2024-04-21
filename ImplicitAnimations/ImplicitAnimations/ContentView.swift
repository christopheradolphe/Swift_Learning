//
//  ContentView.swift
//  ImplicitAnimations
//
//  Created by Christopher Adolphe on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        //To animate scaleEffect and blur
        //This is implicit animations
        //Animate when value watching changes
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    ContentView()
}
