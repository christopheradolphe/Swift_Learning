//
//  ContentView.swift
//  Resizing_Images
//
//  Created by Christopher Adolphe on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.screenshot20240501At124250AM2)
            .resizable()
            .scaledToFit()
            //.frame(width: 300, height: 300)
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
