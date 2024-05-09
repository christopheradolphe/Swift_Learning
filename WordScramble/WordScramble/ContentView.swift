//
//  ContentView.swift
//  WordScramble
//
//  Created by Christopher Adolphe on 2024-04-19.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var ShowingError = false
    
    var wordTotal: Int { //Computed Property
        usedWords.count
    }
    
    var letterCount: Int {
        var count = 0
        for word in usedWords {
            count += word.count
        }
        return count
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }
                
                VStack {
                    Text("Score")
                        .font(.headline)
                    HStack {
                        Text("Words: \(wordTotal)")
                        Spacer()
                        Text("Letters: \(letterCount)")
                    }
                }
                
                Section ("Submitted Words"){
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $ShowingError) {
                //Default Ok message provided
            } message: {
                Text(errorMessage)
            }
            .toolbar {
                Button("New Game", action: startGame)
            }
        }
    }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else { return }
        
        guard isTooShort(word: newWord) else {
            wordError(title: "Word Too Short", message: "Word must be 3 or more letters")
            return
        }
        
        guard isOriginal(word: newWord) else {
            wordError(title: "Word used already", message: "Be more original!")
            return
        }
        
        guard isReal(word: newWord) else {
            wordError(title: "Word not Real", message: "That is not an English word!")
            return
        }
        
        guard isPossible(word: newWord) else {
            wordError(title: "Word not Possible", message: "You can't spell \(newWord) from \(rootWord)!")
            return
        }
        
        guard isSameRoot(word: newWord) else {
            wordError(title: "Word same as Root", message: "You can not choose same word as root word!")
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    func startGame() {
        usedWords.removeAll()
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        fatalError("Could not load start.txt from bundle.")
    }
    
    func isOriginal(word: String) -> Bool {
        return !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    func isSameRoot(word: String) -> Bool {
        return word != rootWord
    }
    
    func isTooShort(word: String) -> Bool {
        return word.count > 2
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        newWord = ""
        ShowingError = true
    }
}

#Preview {
    ContentView()
}
