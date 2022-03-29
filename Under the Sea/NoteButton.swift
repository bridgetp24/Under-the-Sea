//
//  NoteButton.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/29/22.
//

import Foundation
import SwiftUI

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
