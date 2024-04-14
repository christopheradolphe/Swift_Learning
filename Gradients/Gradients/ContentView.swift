//
//  ContentView.swift
//  Gradients
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //To create gradients need three things
        //1. Array of colours to show
        //2. Size and Direction information
        //3. Type of gradient to use (linear)
        VStack {
            //Linear Gradient
            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea()
        
        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(colors: [.red, .yellow, .blue], center: .center)
    }
}

#Preview {
    ContentView()
}
