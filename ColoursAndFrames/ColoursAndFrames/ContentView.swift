//
//  ContentView.swift
//  ColoursAndFrames
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Text("First Content")
//                .background(.blue) //For one text piece
//            Text("Your Content")
//        }
//        .background(.yellow) //For entire text content in stack
//        
//        ZStack {
////            Color(red:2,blue:4) //Combine to make new colour
//            Color.green //Make whole stack one colour
////                .frame(width: 500, height: 200) //Specify size of colour
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("All one colour")
//        }
//        .ignoresSafeArea() //Move into corners of screen
        
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.green
            }
            //Create a glassy effect on a background
            Text("Your Content")
                .foregroundStyle(.secondary) //Opacity
                .padding(50)
                .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    ContentView()
}
