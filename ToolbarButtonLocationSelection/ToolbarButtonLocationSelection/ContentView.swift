//
//  ContentView.swift
//  ToolbarButtonLocationSelection
//
//  Created by Christopher Adolphe on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap") {
                            //action code
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ContentView()
}
