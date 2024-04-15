//
//  ContentView.swift
//  EnvironmentModifiersVsChildModifiers
//
//  Created by Christopher Adolphe on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Gryfindoor")
                .font(.largeTitle) //Child will override Parent
                .blur(radius:1) //Can not override as blur is environment modifier
            Text("Slytherin")
            Text("Hufflepuff")
            Text("Ravenclaw")
        }
        .font(.title) //Parent modifier
        .blur(radius: 2)
    }
}

#Preview {
    ContentView()
}
