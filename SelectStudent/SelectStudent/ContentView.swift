//
//  ContentView.swift
//  SelectStudent
//
//  Created by Christopher Adolphe on 2024-04-07.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermoince", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack{
            Form {
                Picker ("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) { //\.self tells Swift string itself is unique id
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a Student")
        }
    }
}

#Preview {
    ContentView()
}
