//
//  ContentView.swift
//  Stepper
//
//  Created by Christopher Adolphe on 2024-04-15.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepTime = 8.0
    var body: some View {
        Stepper("\(sleepTime.formatted()) hours", value: $sleepTime, in: 4...12, step: 0.25)
    }
}

#Preview {
    ContentView()
}
