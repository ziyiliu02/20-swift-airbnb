//
//  ExploreView.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 26/10/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                    }
                }
                .padding()
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
