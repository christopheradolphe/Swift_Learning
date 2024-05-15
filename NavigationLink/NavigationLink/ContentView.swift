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
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
