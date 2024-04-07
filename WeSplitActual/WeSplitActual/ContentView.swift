//
//  ContentView.swift
//  WeSplitActual
//
//  Created by Christopher Adolphe on 2024-04-07.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(1..<20) {
                            Text("\($0) People")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("Tip Percentage"){
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
