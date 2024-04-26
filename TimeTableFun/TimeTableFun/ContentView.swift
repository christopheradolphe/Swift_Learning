//
//  ContentView.swift
//  TimeTableFun
//
//  Created by Christopher Adolphe on 2024-04-26.
//

import SwiftUI

struct ContentView: View {
    @State private var maxMultiplier = 2
    @State private var settingsActive = false
    private var questionAmounts = [5, 10, 20]
    @State private var questionNumber = 0
    @State private var totalQuestions = 5
    
    var body: some View {
        //Settings page
        NavigationStack {
            Form {
                Section ("Highest Multiplier") {
                    Stepper("\(maxMultiplier)", value: $maxMultiplier, in: 2...12, step: 1)
                }
                
                Section ("Number of questions") {
                    Picker("Number of questions", selection: $questionNumber) {
                        ForEach(questionAmounts, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Button("Start Game") {
                    settingsActive = false
                    
                }
            }
            .toolbar {
                if !settingsActive {
                    Button("Settings") {
                        settingsActive = true
                    }
                }
            }
        }

        
    }
    
    
}

#Preview {
    ContentView()
}
