//
//  ContentView.swift
//  DatePicker
//
//  Created by Christopher Adolphe on 2024-04-15.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    var body: some View {
        DatePicker("Wake Up Time", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
        
        //Formatting Data and Time
        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDates() {
        let now = Date.now
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = now...tomorrow
        //Writing to date components individually
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        
        //Reading date components
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour
        let minute = components.minute
    }
}

#Preview {
    ContentView()
}
