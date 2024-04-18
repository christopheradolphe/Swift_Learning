//
//  ContentView.swift
//  List
//
//  Created by Christopher Adolphe on 2024-04-17.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Chris", "James", "Lauren"]
    
    var body: some View {
        NavigationStack {
            //List combining static and dynamic rows
            List {
                Section ("Section 1") {
                    Text("Static Row 1")
                    Text("Static Row 2")
                }
                
                Section ("Section 2") {
                    ForEach(0..<5) {
                        Text("Dynamic Row \($0)")
                    }
                }
            }
            .listStyle(.grouped)
            
            //List for number loop
            List(0..<5) {
                Text("Dynamic Row \($0)")
            }
            
            //List for arrays
            List{
                Text("Static Row")
                
                ForEach(people, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
