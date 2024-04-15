//
//  ContentView.swift
//  CustomModifier
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.gray)
        }
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    func watermark(with text: String) -> some View {
        modifier(WaterMark(text: text))
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermark(with: "Chris")
        }
    }
}

#Preview {
    ContentView()
}
