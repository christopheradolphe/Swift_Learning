//
//  ContentView.swift
//  NavigationLink
//
//  Created by Christopher Adolphe on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            //1. Basic Navigation Link
//            NavigationLink("Tap Me") {
//                Text("Detail View")
//            }
            //2. Navigation link with bigger button
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                
//            }
            //3. NavigationLink using lists
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
                
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
