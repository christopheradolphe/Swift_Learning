//
//  ContentView.swift
//  NavigationStackReturnToRoot
//
//  Created by Christopher Adolphe on 2024-06-01.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct ContentView: View {
    @State private var path = [Int]()
    
    var body: some View {
        //Can go infinitely deep
        NavigationStack(path: $path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i)
                }
        }
    }
}

#Preview {
    ContentView()
}
