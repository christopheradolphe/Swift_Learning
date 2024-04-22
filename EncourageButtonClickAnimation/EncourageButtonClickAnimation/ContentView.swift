//
//  ContentView.swift
//  EncourageButtonClickAnimation
//
//  Created by Christopher Adolphe on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button ("Submit") {
            animationAmount += 1
        }
        .padding(50)
        .background(.green)
        .foregroundStyle(.white)
        .clipShape(.capsule)
        //Suggest button click
        .overlay(
            Capsule()
                .stroke(.green)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    ContentView()
}
