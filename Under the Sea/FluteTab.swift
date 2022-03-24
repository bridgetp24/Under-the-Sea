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
        
        VStack {
            Text("Todo: Bridget ")
                .font(.title)
                .foregroundColor(Color.black)
            Image("panflute2")
                .resizable()
                .border(.black,width: 3)
        }
 
    }
}
