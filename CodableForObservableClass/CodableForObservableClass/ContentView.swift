//
//  ContentView.swift
//  CodableForObservableClass
//
//  Created by Christopher Adolphe on 2024-06-09.
//

import SwiftUI

@Observable
class User: Codable {
    var name = "Taylor"
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
}

struct ContentView: View {
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
    }
}

#Preview {
    ContentView()
}
