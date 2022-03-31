//
//  GuitarTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
// ISSUES: does not play uke sound, not responsive at all.

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
            Color.teal.opacity(0.25)
            VStack {
                Text("Play The Ukulele!")
                    .font(.title)
                    //.foregroundColor(Color.black)
                Image("UkeImg")
                    .resizable()
                    .padding()
                    .onAppear {
                        setUp()
                    }
                HStack {
                    Button(action: playMidiApp1, label: {
                        Image(systemName: "play")
                        
                    })
                    
                    Button(action: stopMidiApp1, label: {
                        Image(systemName: "pause")
                        
                    })
                    HStack {
                        Button(action: playMidiApp2, label: {
                            Image(systemName: "play")
                            
                        })
                        
                        Button(action: stopMidiApp2, label: {
                            Image(systemName: "pause")
                            
                        })
                        
                        HStack {
                            Button(action: playMidiApp3, label: {
                                Image(systemName: "play")
                                
                            })
                            
                            Button(action: stopMidiApp3, label: {
                                Image(systemName: "pause")
                                
                            })
                            HStack {
                                Button(action: playMidiApp4, label: {
                                    Image(systemName: "play")
                                    
                                })
                                
                                Button(action: stopMidiApp4, label: {
                                    Image(systemName: "pause")
                                    
                                })
                            }
                        }
                    }
                }
                
                
            }
        }
    }
    func playMidiApp1() {
        midiPlayer1.play()
    }
    func playMidiApp2() {
        midiPlayer2.play()
    }
    func playMidiApp3() {
        midiPlayer3.play()
    }
    func playMidiApp4() {
        midiPlayer4.play()
    }
    
    func stopMidiApp1() {
        midiPlayer1.stop()
    }
    func stopMidiApp2() {
        midiPlayer2.stop()
    }
    func stopMidiApp3() {
        midiPlayer3.stop()
    }
    func stopMidiApp4() {
        midiPlayer4.stop()
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
