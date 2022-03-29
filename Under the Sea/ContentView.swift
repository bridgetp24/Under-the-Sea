//
//  ContentView.swift
//  Under the Sea
//
//  Created by Bridget Peterkin on 3/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView(selection: .constant(1)) {
                HomeTab().tabItem {
                    Text("Home")
                    Image(systemName: "music.note.list")
                    
                }.tag(1)
                UkeTab().tabItem {
                    Text("Guitar")
                    Image(systemName: "music.note.list")
                    
                }.tag(2)
                SteelDrumsTab()
                    .tabItem {
                        Text("Steel Drum")
                        Image(systemName: "music.note.list")
                }.tag(3)
                DrumKitTab()
                    .tabItem {
                        Text("Drum kit")
                        Image(systemName: "music.note.list")
                }.tag(4)
                FluteTab()
                    .tabItem {
                        Text("Flute")
                        Image(systemName: "music.note.list")
                }.tag(5)
                
            }
                
  
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
