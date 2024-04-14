//
//  ContentView.swift
//  AlertMessages
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
        }
        .padding()
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
    }
}

#Preview {
    ContentView()
}
