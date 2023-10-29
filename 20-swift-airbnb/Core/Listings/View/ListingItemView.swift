//
//  ListingItemView.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 26/10/23.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("London, UK")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Stay with Anu")
                        .foregroundColor(.gray)
                    
                    Text("Nov 1 - 6")
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$83")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.93")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
