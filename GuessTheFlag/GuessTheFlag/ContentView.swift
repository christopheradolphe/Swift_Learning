//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2) //We will show three options
    
    @State private var showingScore = false
    @State private var incorrectGuess = 0
    @State private var scoreTitle = ""
    @State private var scoreValue = 0
    @State private var questionNumber = 0
    @State private var endOfGame = false
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red:0.1, green: 0.2, blue:0.45), location: 0.3),
                .init(color: Color(red:0.76, green: 0.15, blue:0.26), location: 0.3)], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack (spacing: 50) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius:20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(scoreValue)/\(questionNumber)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
            }
            .padding()
        }
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if scoreTitle != "Correct" {
                Text("Wrong! That is the flag of \(countries[incorrectGuess])")
            }
            Text("Your score is \(scoreValue)")
        }
        
        .alert("Game Over", isPresented: $endOfGame) {
            Button("Restart Game", action: restartGame)
        } message: {
            Text("Final Game Score: \(scoreValue)/\(questionNumber)")
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreValue += 1
        } else {
            scoreTitle = "False"
            incorrectGuess = number
        }
        showingScore = true
        questionNumber += 1
    }
    
    func askQuestion() {
        if questionNumber > 7 {
            endOfGame = true
        }
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restartGame() {
        questionNumber = 0
        scoreValue = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}
