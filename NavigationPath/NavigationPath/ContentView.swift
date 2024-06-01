//
//  ContentView.swift
//  NavigationPath
//
//  Created by Christopher Adolphe on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath() //Can hold various hashable data types
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select Number: \(i)", value: i)
                }
                ForEach(0..<5) { i in
                    NavigationLink("Select Number: \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Press 556") {
                    path.append(556)
                }
                Button("Press Hello") {
                    path.append("Hello")
                }
            }
            //Navigation destination to handle every type
            .navigationDestination(for: Int.self) { int in
                Text("You have selected \(int)")
            }
            .navigationDestination(for: String.self) { str in
                    Text("You have selected \(str)")
            }
        }
    }
}

#Preview {
    ContentView()
}
