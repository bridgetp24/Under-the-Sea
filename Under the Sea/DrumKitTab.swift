//
//  DrumKitTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
//

import Foundation
import SwiftUI
/** playable bongos*/
struct DrumKitTab: View {
    let midiModule = MIDIModule(defaultPatch: 0, defaultChannel: 9, midiFileName: "", midiFileExt: "")
    var body: some View {
        ZStack {
            VStack {
                let pitch = 61
                Text("Bongos")
                    .font(.title)
                    .foregroundColor(Color.black)


        
                ZStack {
                    Spacer()

                    Image("bongos2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    VStack() {
                        HStack {
                            NoteButton(text: "High bongo", midiModule: midiModule, pitch: UInt8(pitch - 1), duration: 1, channel: 9)
                                .padding(.leading, 0)
                                .frame(width: 125.0, height: 50.0)
                                .scaleEffect(1)
                                .foregroundColor(Color.black)
                            
                            Spacer()
                            NoteButton(text: "Low bongo", midiModule: midiModule, pitch: UInt8(pitch), duration: 1, channel: 9)
                                .padding()
                                .frame(width: 150.0, height: 50.0)
                                .scaleEffect(1)
                                .foregroundColor(Color.black)
                            
                        }.frame(width: 300, height: 50)
                        Spacer()
                    }.frame(width: 300, height: 190)


                    
                        
                }
                .frame(width: 300, height: 190)
                
            }
        }.background(Color.blue)


    }

}

