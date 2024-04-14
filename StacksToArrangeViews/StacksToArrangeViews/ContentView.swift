//
//  ContentView.swift
//  StacksToArrangeViews
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) { //Alignment/Spacing
            Text("Hello1")
            Text("Hello2")
        }
        HStack(spacing: 20) { //Spacing for Hstack
            Text("Hello1")
            Text("Hello2")
        }
        ZStack { //Stacked on top of each other
            Text("Hello 1")
            Text("Hello2")
        }
    }
}

#Preview {
    ContentView()
}
