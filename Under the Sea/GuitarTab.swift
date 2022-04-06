//
//  GuitarTab.swift
//  Under the Sea
//
//  Created by Alijah Mallula on 3/24/22.
//

import Foundation
import SwiftUI
import AVKit

struct GuitarTab: View {
    @State var midiPlayer1 = AVMIDIPlayer()
    @State var midiPlayer2 = AVMIDIPlayer()
    @State var midiPlayer3 = AVMIDIPlayer()
    @State var midiPlayer4 = AVMIDIPlayer()
    
    var body: some View {
        ZStack {

            VStack {
                Text("Play The Ukulele!")
                    .font(.title)
                Image("UkeImg")
                    .resizable()
                    .padding()
                    .onAppear {
                        setUp()
                    }
                    .overlay(content: {
                        HStack(spacing:10){
                            Rectangle()
                                .frame(width: 25, height: 500)
                                .foregroundColor(.brown)
                                .opacity(0.01)
                                .onTapGesture {
                                    playMidiApp1()
                                }
                            Rectangle()
                                .frame(width: 25, height: 500)
                                .foregroundColor(.brown)
                                .opacity(0.01)
                                .onTapGesture {
                                    playMidiApp2()
                                    
                                }
                            Rectangle()
                                .frame(width: 25, height: 500)
                                .foregroundColor(.brown)
                                .opacity(0.01)
                                .onTapGesture {
                                    playMidiApp3()
                                    
                                }
                            Rectangle()
                                .frame(width: 25, height: 500)
                                .foregroundColor(.brown)
                                .opacity(0.01)
                                .onTapGesture {
                                    playMidiApp4()
                                    
                                }
                        }.offset(x: 0, y: -50)
                        
                    })
                
                
                
            }.background(
                Image("Background")
                    .resizable()
                    .scaledToFill())
        }
            
    }
    
    
    
    
    func playMidiApp1() {
        midiPlayer1.currentPosition = 0.0
        midiPlayer1.play()
    }
    func playMidiApp2() {
        midiPlayer2.currentPosition = 0.0
        midiPlayer2.play()
    }
    func playMidiApp3() {
        midiPlayer3.currentPosition = 0.0
        midiPlayer3.play()
    }
    func playMidiApp4() {
        midiPlayer4.currentPosition = 0.0
        midiPlayer4.play()
    }
    
    
    
    func setUp() {
        midiPlayer1 = try! AVMIDIPlayer(
            contentsOf: Bundle.main.url(forResource: "UkeA", withExtension: "mid", subdirectory: "BandUkeChords")!, soundBankURL: Bundle.main.url(forResource: "gs_instruments", withExtension: "dls"))
        midiPlayer2 = try! AVMIDIPlayer(
            contentsOf: Bundle.main.url(forResource: "UkeC", withExtension: "mid",subdirectory: "BandUkeChords")!, soundBankURL: Bundle.main.url(forResource: "gs_instruments", withExtension: "dls"))
        midiPlayer3 = try! AVMIDIPlayer(
            contentsOf: Bundle.main.url(forResource: "UkeE", withExtension: "mid",subdirectory: "BandUkeChords")!, soundBankURL: Bundle.main.url(forResource: "gs_instruments", withExtension: "dls"))
        midiPlayer4 = try! AVMIDIPlayer(
            contentsOf: Bundle.main.url(forResource: "UkeG", withExtension: "mid",subdirectory: "BandUkeChords")!, soundBankURL: Bundle.main.url(forResource: "gs_instruments", withExtension: "dls"))
        
    }// end of setup
}
