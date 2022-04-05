//
//  FluteTab.swift
//  Under the Sea
//
//  Created by Andrea Atkinson on 3/24/22.
//

import Foundation
import SwiftUI

struct FluteTab: View {
    var midiModule = MIDIModule(defaultPatch: 76, defaultChannel: 0, midiFileName: "", midiFileExt: "")
    
    
    var body: some View {
        

    
        ZStack {
            
            Image("Background")
                .resizable()
                .foregroundColor(Color.black)
                .scaledToFill()
            
            Image("Flute")
                .resizable()
                .aspectRatio(contentMode: .fit)
         
            HStack(spacing: 7) {
                
                NoteButton(text: "C", midiModule: midiModule, pitch: 60, duration: 1, channel: 0)
                    .frame(width: 63, height: 250.0)
                .foregroundColor(.white)
                .background (Color(hue: 0.079, saturation: 0.431, brightness: 1.0, opacity: 0.314))
                .padding(-2)
                
            
                NoteButton(text: "D", midiModule: midiModule, pitch: 62, duration: 1, channel: 0)
                .frame(width: 62, height: 250.0)
                .foregroundColor(.white)
                .background(Color(hue: 0.079, saturation: 0.431, brightness: 1.0, opacity: 0.314))
                .padding(-2)
                
                
                    NoteButton(text: "E", midiModule: midiModule, pitch: 64, duration: 1, channel: 0)
                   .frame(width: 63, height: 250.0)
                   .foregroundColor(.white)
                   .background(Color(hue: 0.079, saturation: 0.431, brightness: 1.0, opacity: 0.314))
                   .padding(-2)
                
                NoteButton(text: "F", midiModule: midiModule, pitch: 65, duration: 1, channel: 0)
                   .frame(width: 63, height: 100)
                   .foregroundColor(.white)
                   .background(Color(hue: 0.079, saturation: 0.431, brightness: 1.0, opacity: 0.314))
                   .padding(-2)
                
                NoteButton(text: "G", midiModule: midiModule, pitch: 67, duration: 1, channel: 0)
                   .frame(width: 63, height: 100.0)
                   .foregroundColor(.white)
                   .background(Color(hue: 0.079, saturation: 0.431, brightness: 1.0, opacity: 0.314))
                   .padding(-2)
        
                
            }
        }
        }
        
        
}


struct Previews_FluteTab_Previews: PreviewProvider {
    static var previews: some View {
     FluteTab()
    }
}

