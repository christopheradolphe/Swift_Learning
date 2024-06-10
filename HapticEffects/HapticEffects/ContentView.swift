//
//  ContentView.swift
//  HapticEffects
//
//  Created by Christopher Adolphe on 2024-06-09.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        //Basic haptics with sensory feedback
        .sensoryFeedback(.selection, trigger: counter) //basic haptic
//        .sensoryFeedback(.impact(weight: .heavy, intensity: 1), trigger: counter)
    }
}

#Preview {
    ContentView()
}
