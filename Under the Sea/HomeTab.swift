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
        ZStack {
            Image("HomeBackground-5")
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Text("Take a trip to the ocean by creating an under the sea jam! Select an instrument to get started.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
            }

        }

    }
}

struct Previews_HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
