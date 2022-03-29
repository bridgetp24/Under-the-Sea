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
    @State var text = "TODO: Daniel"
    
    var body: some View {
        
        VStack {
            Text(text)
                .font(.title)
                .onTapGesture {
                    midiModule.note(pitch: 60, duration: 1, channel: 0)
                    text = "tapped"
                }
                .onLongPressGesture {
                    midiModule.note(pitch: 62, duration: 1, channel: 0)
                    text = "pressed"
                }
        }

    }
}

struct Previews_SteelDrumTab_Previews: PreviewProvider {
    static var previews: some View {
        SteelDrumsTab()
    }
}
