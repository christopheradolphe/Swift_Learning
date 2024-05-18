//
//  ContentView.swift
//  Moonshot
//
//  Created by Christopher Adolphe on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            Text("Detail View")
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 100)
                                VStack {
                                    Text(mission.displayName)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
