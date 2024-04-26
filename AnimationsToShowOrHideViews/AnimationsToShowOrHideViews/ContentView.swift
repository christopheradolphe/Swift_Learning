//
//  ContentView.swift
//  AnimationsToShowOrHideViews
//
//  Created by Christopher Adolphe on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    //.transition(.scale)
            }
        }
    }
}

#Preview {
    ContentView()
}
