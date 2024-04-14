//
//  ContentView.swift
//  Images
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Using Your own image
            //Nees to upload to assets.xcassets
        Image("SafeBite Logo")
        
        Image(systemName: "pencil.circle")
            .foregroundStyle(.red)
            .font(.largeTitle)
        
        //Making a button with an image
        Button {
            print("Tapped")
        } label : {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundColor(.blue)
                .background(.green)
        }
    }
}

#Preview {
    ContentView()
}
