//
//  ContentView.swift
//  WeSplit
//
//  Created by Christopher Adolphe on 2024-04-07.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermoine", "Ron"]
    @State private var selectedStudent = "Harry"
    
    @State private var name = ""
    //With @State, Apple recommends using private for variables
    @State private var tapCount = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text:$name) //$ to bind value as User types in
                    Text("Your name is \(name)")
                }
                Section {
                    Text("Hello world!")
                    Text("Hello world!")
                    Text("Hello world!")
                }
                
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.large)
            
            Form {
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
            }
        }
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
