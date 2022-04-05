//
//  SteelDrumTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
//

import Foundation
import SwiftUI

/**
 This is an interactive steel drum. This View expects the device to be an vertical iPad
 */
struct SteelDrumsTab: View {
    var midiModule = MIDIModule(defaultPatch: 114, defaultChannel: 0, midiFileName: "", midiFileExt: "")
    
    var body: some View {
        VStack {
            Text("Steel Drum")
                .font(.title)
            ZStack {
                Image("SteelPanTransparent")
                    .resizable()
                    .scaledToFit()
                // Outer notes
                ForEach(0..<12) {i in
                    let pitch = i + 60
                    let angle = -Double(i+3) * 7 * Double.pi/6
                    NoteButton(text: pitchToText(pitch: pitch), midiModule: midiModule, pitch: UInt8(pitch), duration: 1, channel: 0)
                        .scaleEffect(4)
                        .offset(x: cos(angle) * 275, y: sin(angle) * 275)
                        .foregroundColor(Color.black)
                }
                // Middle notes
                ForEach(0..<12) {i in
                    let pitch = i + 72
                    let angle = -Double(i+3) * 7 * Double.pi/6
                    NoteButton(text: pitchToText(pitch: pitch), midiModule: midiModule, pitch: UInt8(pitch), duration: 1, channel: 0)
                        .scaleEffect(3)
                        .offset(x: cos(angle) * 150, y: sin(angle) * 150)
                        .foregroundColor(Color.black)
                }
                // Inner notes
                ForEach(0..<5) {i in
                    let pitch = i + 84
                    let angle = Double(i+3) * 4 * Double.pi/5
                    NoteButton(text: pitchToText(pitch: pitch), midiModule: midiModule, pitch: UInt8(pitch), duration: 1, channel: 0)
                        .scaleEffect(2)
                        .offset(x: cos(angle) * 50, y: sin(angle) * 50)
                        .foregroundColor(Color.black)
                }
            }
        }
        .background(
            Image("Background")
                .resizable()
                .scaledToFill()
        )
    }
    
    func pitchToText(pitch: Int) -> String {
        if(pitch % 12 == 0) {
            return "C"
        }
        if(pitch % 12 == 1) {
            return "C#"
        }
        if(pitch % 12 == 2) {
            return "D"
        }
        if(pitch % 12 == 3) {
            return "Eb"
        }
        if(pitch % 12 == 4) {
            return "E"
        }
        if(pitch % 12 == 5) {
            return "F"
        }
        if(pitch % 12 == 6) {
            return "F#"
        }
        if(pitch % 12 == 7) {
            return "G"
        }
        if(pitch % 12 == 8) {
            return "Ab"
        }
        if(pitch % 12 == 9) {
            return "A"
        }
        if(pitch % 12 == 10) {
            return "Bb"
        }
        if(pitch % 12 == 11) {
            return "B"
        }
        
        return "Z"
    }
}

struct Previews_SteelDrumTab_Previews: PreviewProvider {
    static var previews: some View {
        SteelDrumsTab()
    }
}
