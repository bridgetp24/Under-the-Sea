//
//  SteelDrumTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
//

import Foundation
import SwiftUI

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
                NoteButton(text: "C", midiModule: midiModule, pitch: 60, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 50, y: 250)
                NoteButton(text: "D", midiModule: midiModule, pitch: 62, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 250, y: 100)
                NoteButton(text: "E", midiModule: midiModule, pitch: 64, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 200, y: -150)
                NoteButton(text: "F", midiModule: midiModule, pitch: 65, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: -100, y: 250)
                NoteButton(text: "G", midiModule: midiModule, pitch: 67, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 200, y: 200)
                NoteButton(text: "A", midiModule: midiModule, pitch: 69, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 250, y: -50)
                NoteButton(text: "B", midiModule: midiModule, pitch: 71, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 100, y: -250)
                NoteButton(text: "C", midiModule: midiModule, pitch: 72, duration: 1, channel: 0)
                    .scaleEffect(3)
                    .offset(x: 50, y: 150)
            }
        }

    }
}

struct Previews_SteelDrumTab_Previews: PreviewProvider {
    static var previews: some View {
        SteelDrumsTab()
    }
}
