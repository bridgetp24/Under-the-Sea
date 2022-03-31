//
//  FluteTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
//

import Foundation
import SwiftUI

struct FluteTab: View {
    var body: some View {
        
        
        
        ZStack {
            
            Image("Background")
                .resizable()
                .foregroundColor(Color.black)
                .scaledToFill()
            
            Image("panflute2")
                .resizable()
         
            VStack(spacing: 12) { Text("C").font(.title)
                .frame(width: 20.0, height: 250.0)
                .foregroundColor(.white)
                .background(.green)
            }
            
        }
        
        
}
}

struct Previews_FluteTab_Previews: PreviewProvider {
    static var previews: some View {
     FluteTab()
    }
}

