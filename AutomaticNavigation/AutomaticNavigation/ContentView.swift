//
//  ContentView.swift
//  AutomaticNavigation
//
//  Created by Christopher Adolphe on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) { //Navigation stack is binded to path
            //When path is changed, we navigate to another screen
            //When Navigation changes, path is updated
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                
                Button("Show 64") {
                    path.append(64)
                }
                
                Button("Show 32 then 64") { //Go two layers deep
                    path = [32, 64] //***Try this one to understand
                }
            }
            .navigationDestination(for: Int.self) { selection in
                    Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ContentView()
}
