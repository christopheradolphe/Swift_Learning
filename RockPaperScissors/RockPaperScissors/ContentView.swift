//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    @State private var Win = true
    @State private var AppMove = Int.random(in: 0...2)
    @State private var playerScore = 0
    @State private var numberQuestions = 0
    @State private var gameOver = false
    
    let elements = ["Rock", "Paper", "Scissors"]
    var body: some View {
        NavigationStack {

            ZStack {
                LinearGradient(colors: [.white, .gray], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    Text("Score: \(playerScore)/\(numberQuestions)")
                        .font(.title.bold())
                        .foregroundColor(.green)
                        .padding()
                    Text("Computer Move:")
                    Image(elements[AppMove])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("You want to \(Win ? "Win" : "Lose")")
                    HStack {
                        ForEach(0..<3) { number in
                            Button{
                                checkSelection(number)
                            } label: {
                                Image(elements[number])
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("Rock - Paper - Scissors")
        }
        
        .alert("Game Over", isPresented: $gameOver) {
            Button("Restart Game", action: restartGame)
        } message: {
            Text("Final Game Score: \(playerScore)/\(numberQuestions)")
        }

    }
    func checkSelection(_ number: Int) -> Void {
        if Win {
            if (number + 2) % 3 == AppMove {
                playerScore += 1
            }
        } else {
            if (number + 1) % 3 == AppMove {
                playerScore += 1
            }
        }
        askQuestion()
    }
    
    func askQuestion() {
        Win.toggle()
        numberQuestions += 1
        if numberQuestions > 9 {
            gameOver = true
        }
        AppMove = Int.random(in: 0...2)
    }
    
    func restartGame() {
        Win = true
        numberQuestions = 0
        AppMove = Int.random(in: 0...2)
        playerScore = 0
    }
}

#Preview {
    ContentView()
}
