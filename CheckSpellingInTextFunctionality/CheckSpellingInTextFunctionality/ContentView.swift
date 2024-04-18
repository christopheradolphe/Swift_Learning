//
//  ContentView.swift
//  CheckSpellingInTextFunctionality
//
//  Created by Christopher Adolphe on 2024-04-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    func testStrings() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let mispelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = mispelledRange.location == NSNotFound
        // if allGood is true then no spelling mistakes in english
    }
}

#Preview {
    ContentView()
}
