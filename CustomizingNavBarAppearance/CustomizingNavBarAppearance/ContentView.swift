//
//  ContentView.swift
//  CustomizingNavBarAppearance
//
//  Created by Christopher Adolphe on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title Goes Here")
            .navigationBarTitleDisplayMode(.inline) //Title remains at top with scroll
            .toolbarBackground(.blue) //Colour of title and toolbar after scrolling down
            .toolbarColorScheme(.dark) //makes colour go white in toolbar after scroll down
            .toolbar(.hidden) //hide toolbar
        }
    }
}

#Preview {
    ContentView()
}
