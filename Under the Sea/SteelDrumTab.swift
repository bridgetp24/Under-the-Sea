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
                    .offset(x: 50, y: 250)
                NoteButton(text: "D", midiModule: midiModule, pitch: 62, duration: 1, channel: 0)
                    .offset(x: 250, y: 100)
            }
        }

    }
}

struct Previews_SteelDrumTab_Previews: PreviewProvider {
    static var previews: some View {
        SteelDrumsTab()
    }
}
