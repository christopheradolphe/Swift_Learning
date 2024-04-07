//
//  ContentView.swift
//  SelectStudent
//
//  Created by Christopher Adolphe on 2024-04-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let students = ["Harry", "Hermoince", "Ron"]
        @State private var selectedStudent = "Harry"
        NavigationStack{
            Form {
                Picker ("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
