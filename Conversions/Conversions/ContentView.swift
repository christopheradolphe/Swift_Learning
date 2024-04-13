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
    
    var outputTempValue: Double {
        if inputType == outputType {
            return inputValue
        } else if inputType == "Celsius" {
            if outputType == "Farhenheit" {
                return inputValue
            } else { //Kelvin
                return inputValue + Double(273)
            }
        } else if inputType == "Farhenheit" {
            if outputType == "Celsius" {
                return inputValue
            } else { //Kelvin
                return inputValue
            }
        } else { //Kelvin
            if outputType == "Celsius" {
                return inputValue
            } else { //Farhenheit
                return inputValue
            }
        }
    }
    
    let temperatureTypes = ["Celsius", "Farhenheit", "Kelvin"]
    var body: some View {
        NavigationStack {
            Form {
                Section ("Input Value") {
                    Picker("Input Value", selection: $inputType) {
                        ForEach(temperatureTypes, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                    .pickerStyle(.segmented)
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
