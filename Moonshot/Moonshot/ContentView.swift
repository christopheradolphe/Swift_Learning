//
//  ContentView.swift
//  Moonshot
//
//  Created by Christopher Adolphe on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
