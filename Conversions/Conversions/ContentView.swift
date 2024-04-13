//
//  ContentView.swift
//  Conversions
//
//  Created by Christopher Adolphe on 2024-04-12.
//

import SwiftUI

struct ContentView: View {
    @State private var inputType: String = "Celsius"
    @State private var outputType: String = "Farhenheit"
    @State private var inputValue: Double = 0.0
    
    
    let temperatures = ["Celsius", "Farhenheit", "Kelvin"]
    var body: some View {
        NavigationStack {
            Form {
                Section ("Input Value") {
                    
                }
            }
            .navigationTitle("Temperature Conversion")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
