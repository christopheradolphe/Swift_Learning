//
//  ContentView.swift
//  CustomAnimations
//
//  Created by Christopher Adolphe on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        //Default (implicit)
//        .animation(.default, value: animationAmount)
        
        //Linaer
//        .animation(.linear, value: animationAmount)
        
        //Spring
//        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        
        //Ease in and Out with Delay
//        .animation(
//            .easeInOut(duration: 2)
//                .delay(1),
//            value:animationAmount
//        )
        
        //Ease in and out then jump to final view
//        .animation(
//            .easeInOut(duration: 2)
//            .repeatCount(2, autoreverses: true),
//            value: animationAmount
//        )
        
        //Repeat Animation Forever (eg. beating heart)
        .animation(
            .easeInOut(duration: 2)
            .repeatForever(),
            value: animationAmount
        )
        
    }
}

#Preview {
    ContentView()
}
