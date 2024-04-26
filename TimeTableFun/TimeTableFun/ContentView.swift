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
    @State private var questionNumber = 1
    @State private var totalQuestions = 5
    @State private var multiplicands = [0, 0]
    @State private var guess = 0
    
    var body: some View {
        //Settings page
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            VStack (alignment: .center, spacing: 50) {
                Text("Question \(questionNumber)")
                    .font(.largeTitle)
                
                Text("\(multiplicands[0]) x \(multiplicands[1]) ?")
                    .font(.largeTitle)
                
                Form {
                    Section("Answer") {
                        TextField("Answer", value: $guess, format: .number)
                    }
                }
                
                Button ("Submit") {
                    checkAnswer()
                }
            }
            
            if settingsActive {
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

        
    }
    func askQuestion() {
        
    }
    
    func checkAnswer() -> Bool {
        return true
    }
    
}

#Preview {
    ContentView()
}
