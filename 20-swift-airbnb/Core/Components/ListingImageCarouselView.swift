//
//  ListingImageCarouselView.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 27/10/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = ["listing-1", "listing-2", "listing-3", "listing-4"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView()
    }
}
