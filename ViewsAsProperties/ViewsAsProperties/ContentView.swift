//
//  ContentView.swift
//  ViewsAsProperties
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    let motto1 = Text("Harry") //View as Property
    let motto2 = Text("James")
    
    var body: some View {
        VStack {
            motto1
            motto2
        }
    }
}

#Preview {
    ContentView()
}
