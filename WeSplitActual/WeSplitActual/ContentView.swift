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
    @FocusState private var amountIsFocused: Bool
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 1)
        let tipSelection = Double(tipPercentage)
        let TipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + TipValue
        let perPerson = grandTotal / peopleCount
        return perPerson
    }
    
    var totalGroup: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let TipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + TipValue
        return grandTotal
    }
    
    let tipPercentages = [10, 15, 20, 25, 0]
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused) //sets amount is focused to true
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(1..<20) { //For each range
                            Text("\($0) People") //Shorthand syntax
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("Tip Percentage"){
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) { //Creating views in loop
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented) //How to choose picker style
                    Picker("Other Tip Options", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text("\($0)%")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section ("Total for the Group") {
                    Text(totalGroup, format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section ("Total per Person") {
                    Text(totalPerPerson, format:.currency(code: Locale.current.currency?.identifier ?? "USD")) //Locale is for current user data
                }
            }
            .navigationTitle("WeSplit")
            .toolbar { //toolbar
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false //Section of code run when button pressed
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
