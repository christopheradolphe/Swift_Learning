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
    @State private var correctAnswers = 0
    
    @State private var guess = 0
    @State private var wrongAnswer = false
    @State private var gameOver = false
    
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
                

                TextField("Answer", value: $guess, format: .number)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .padding(10)
                    .background(.blue)
                    .foregroundColor(.white)

                
                Button {
                    checkAnswer()
                    askQuestion()
                } label: {
                    Text("Submit")
                        .padding()
                        .foregroundColor(.white)
                        .background(.green)
                        .clipShape(.capsule)
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
        .alert("Wrong Answer", isPresented: $wrongAnswer) {
            //Do nothing
        } message: {
            Text("\(multiplicands[0])x\(multiplicands[1])=\(multiplicands[0] * multiplicands[1])")
        }
        
        .alert("Game Over", isPresented: $gameOver) {
            Button("Restart Game", action: newGame)
        } message: {
            Text("Game over! \nOverall Score: \(correctAnswers)/\(totalQuestions)")
        }
        
    }
    func askQuestion() {
        questionNumber += 1
        if questionNumber > totalQuestions {
            gameOver = true
        }
        multiplicands[0] = Int.random(in: 2...maxMultiplier)
        multiplicands[1] = Int.random(in: 2...maxMultiplier)
    }
    
    func checkAnswer() {
        if guess == multiplicands[0] * multiplicands[1] {
            correctAnswers += 1
        } else {
            wrongAnswer = true
        }
    }
    
    func newGame() {
        questionNumber = 0
        correctAnswers = 0
        askQuestion()
    }
    
}

#Preview {
    ContentView()
}
