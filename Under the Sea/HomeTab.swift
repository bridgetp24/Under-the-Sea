//
//  HomeTab.swift
//  Under the Sea
//
//  Created by Daniel Riedel on 3/24/22.
//

import Foundation
import SwiftUI

struct HomeTab: View {
    var body: some View {
        VStack {
            Image("appImage-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Take a trip to the ocean by creating a under the sea jam! Select an instrument to get started.")
                .font(.title)
                .multilineTextAlignment(.center)
        }

    }
}

struct Previews_HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
