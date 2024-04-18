//
//  ContentView.swift
//  LoadingResourcesFromAppBundle
//
//  Created by Christopher Adolphe on 2024-04-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hi")
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            //We found file in system
            if let fileContents = try? String(contentsOf: fileURL) {
                //we loaded the file into the string fileContents
            }
        }
    }
}

#Preview {
    ContentView()
}
