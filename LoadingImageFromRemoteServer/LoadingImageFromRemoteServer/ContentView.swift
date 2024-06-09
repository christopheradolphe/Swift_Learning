//
//  ContentView.swift
//  LoadingImageFromRemoteServer
//
//  Created by Christopher Adolphe on 2024-06-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("Error loading image")
            } else {
                ProgressView()
            }
        }
    }
}

#Preview {
    ContentView()
}
