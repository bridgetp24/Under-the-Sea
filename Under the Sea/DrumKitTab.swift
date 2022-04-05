//
//  DrumKitTab.swift
//  Under the Sea
//
//  Created by Bridget Peterkin on 3/24/22.
//

import Foundation
import SwiftUI
/** playable bongos*/
struct DrumKitTab: View {
    let midiModule = MIDIModule(defaultPatch: 0, defaultChannel: 9, midiFileName: "", midiFileExt: "")
    var body: some View {
            VStack {
                let pitch = 61
                Text("Bongos")
                    .font(.title)
                    .scaleEffect(2)
                    .foregroundColor(Color.white)
        
                ZStack {
                    Spacer()

                    Image("bongos2")
                        .resizable()
                        .scaledToFit()
                    VStack() {
                        Spacer()
                        
                        HStack {
                            Spacer()
                            NoteButton(text: "High bongo", midiModule: midiModule, pitch: UInt8(pitch - 1), duration: 1, channel: 9)
                                .padding(.bottom, 40)
                                .scaleEffect(2)
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            Spacer()
                            NoteButton(text: "Low bongo", midiModule: midiModule, pitch: UInt8(pitch), duration: 1, channel: 9)
                                .padding(.bottom, 40)
                                .scaleEffect(2)
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        Spacer()
                        Spacer()
                    }

                    
                        
                }
                
                
                
            } .background(
                Image("Background")
                    .resizable()
                    .scaledToFill()
            )
        }

}

struct Previews_DrumKitTab_Previews: PreviewProvider {
    static var previews: some View {
        DrumKitTab()
.previewInterfaceOrientation(.portrait)
    }
}
