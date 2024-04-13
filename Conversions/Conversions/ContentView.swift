//
//  ContentView.swift
//  Conversions
//
//  Created by Christopher Adolphe on 2024-04-12.
//

import SwiftUI

struct ContentView: View {
    @State private var inputType: String = "Celsius"
    @State private var outputType: String = "Celsius"
    @State private var inputValue: Double = 0.0
    
    var outputTempValue: Double {
        if inputType == outputType {
            return inputValue
        } else if inputType == "Celsius" {
            if outputType == "Farhenheit" {
                return (inputValue * 1.8) + Double(32)
            } else { //Kelvin
                return inputValue + Double(273)
            }
        } else if inputType == "Farhenheit" {
            if outputType == "Celsius" {
                return (inputValue - Double(32)) * 5/9
            } else { //Kelvin
                return ((inputValue - Double(32)) * 5/9) + Double(273)
            }
        } else { //Kelvin
            if outputType == "Celsius" {
                return inputValue - Double(273)
            } else { //Farhenheit
                return ((inputValue - Double(273)) * 1.8) + Double(32)
            }
        }
    }
    
    let temperatureTypes = ["Celsius", "Farhenheit", "Kelvin"]
    var body: some View {
        NavigationStack {
            Form {
                Section("Input Value") {
                    Picker("Input Value", selection: $inputType) {
                        ForEach(temperatureTypes, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    TextField("\(inputType) temperature", value: $inputValue, format: .number)
                }
                
                Section("Output Value") {
                    Picker("Output Value", selection: $outputType) {
                        ForEach(temperatureTypes, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text("\(outputTempValue, format: .number)")
                }            }
            .navigationTitle("Temperature Conversion")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
