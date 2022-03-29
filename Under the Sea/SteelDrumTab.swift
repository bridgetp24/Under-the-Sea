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
                    .position(x: 450, y: 775)
                NoteButton(text: "D", midiModule: midiModule, pitch: 62, duration: 1, channel: 0)
                    .position(x: 650, y: 600)
            }
        }

    }
}

struct NoteButton: View {
    var text: String
    var midiModule: MIDIModule
    var pitch: UInt8
    var duration: Double
    var channel: UInt8
    
    
    var body: some View {
        Button(text) {
            midiModule.note(pitch: pitch, duration: duration, channel: channel)
        }
    }
}

struct Previews_SteelDrumTab_Previews: PreviewProvider {
    static var previews: some View {
        SteelDrumsTab()
    }
}
