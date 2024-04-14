//
//  ContentView.swift
//  Buttons
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Delete Selection", action: executeDelete)
        
        VStack {
            Button ("Button 1") { }
                .buttonStyle(.bordered)
            Button ("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            
            //Custom button
            Button {
                executeDelete()
            } label: {
                Text("Tap Me")
                    .padding()
                    .foregroundStyle(.blue)
                    .background(.green)
            }
        }
    }
    func executeDelete() {
        print("Now deleting ..")
    }
}

#Preview {
    ContentView()
}
