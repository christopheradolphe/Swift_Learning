//
//  ContentView.swift
//  ScrollingGridViews
//
//  Created by Christopher Adolphe on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    //Layout indicates size of each item and number of columns or rows depending on use
    //Becuase layout used in LazyVgrid, the three elements indicates there will be three rows
    //1. Fixed size of each element
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    //2. Make size adaptable with min and max so columns or rows fit to size of screen (better)
    let layout1 = [
        GridItem(.adaptive(minimum: 80, maximum: 100))
    ]
    
    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: layout1) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout1) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
