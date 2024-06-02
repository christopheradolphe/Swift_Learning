//
//  ContentView.swift
//  UserEditableNavigationTitleBar
//
//  Created by Christopher Adolphe on 2024-06-02.
//

import SwiftUI

struct ContentView: View {
    @State private var title = "My Title"
    
    var body: some View {
        NavigationStack {
            Text("Hello World")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline) //has to be inline display mode
        }
    }
}

#Preview {
    ContentView()
}
