//
//  ContentView.swift
//  HapticEffects
//
//  Created by Christopher Adolphe on 2024-06-09.
//
import CoreHaptics
import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        //Basic haptics with sensory feedback
        .sensoryFeedback(.selection, trigger: counter) //basic haptic
//        .sensoryFeedback(.impact(weight: .heavy, intensity: 1), trigger: counter)
        
        Button("Play Haptic", action: complexSuccess)
            .onAppear(perform: prepareHaptics)
        //***Must prepare haptics before using them
    }
    
    //Complex Haptics
    func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    func complexSuccess() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        var events = [CHHapticEvent]()
        
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [sharpness, intensity], relativeTime: 0)
        events.append(event)
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play patter: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ContentView()
}
