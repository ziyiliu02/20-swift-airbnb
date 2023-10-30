//
//  ListingDetailView.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 27/10/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        ScrollView {
            Group {
                ZStack(alignment: .topLeading) {
                    ListingImageCarouselView(listing: listing)
                        .frame(height: 320)
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                            }
                            .padding(32)
                    }

                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(listing.title)
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 2) {
                            Image(systemName: "star.fill")
                            
                            Text("\(listing.rating)")
                            
                            Text(".")
                            
                            Text("15 reviews")
                                .underline()
                                .fontWeight(.semibold)
                        }
                        .foregroundStyle(.black)
                        
                        Text("\(listing.city), \(listing.state), United Kingdom")
                    }
                    .font(.caption)
                }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                
                // host info view
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Room in a home hosted by \(listing.ownerName)")
                            .font(.headline)
                            .frame(width: 250, alignment: .leading)
                        
                        HStack(spacing: 2) {
                            Text("\(listing.numberOfBedrooms) double bed -")
                            Text("\(listing.numberOfBathrooms) Dedicated bathroom -")
                            Text("Host lives here")
                        }
                        .font(.caption)
                    }
                    .frame(width: 300)
                    
                    Spacer()
                    
                    Image("profile-photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                }
                .padding()
                
                Divider()
                
                // listing features
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(listing.features) { feature in
                        HStack(spacing: 12) {
                            Image(systemName: feature.imageName)
                            
                            VStack(alignment: .leading) {
                                Text(feature.title)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                
                                Text(feature.subtitle)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            
                            Spacer()
                        }
                    }
                }
                .padding()
                
                Divider()
                
                // bedrooms view
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll sleep")
                        .font(.headline)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                                VStack {
                                    Image(systemName: "bed.double")
                                    
                                    Text("Bedroom \(bedroom)")
                                }
                                .frame(width: 132, height: 100)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                }
                            }
                        }
                    }
                }
                .padding()
                
                Divider()
                
                // listing amenities
                VStack(alignment: .leading, spacing: 16) {
                    Text("What this place offers")
                        .font(.headline)
                    
                    ForEach(listing.amenities) { amenity in
                        HStack {
                            Image(systemName: amenity.imageName)
                                .frame(width: 32)
                            
                            Text(amenity.title)
                                .font(.footnote)
                            
                            Spacer()
                        }
                    }
                }
                .padding()
            }
            
            Group {
                Divider()
                
                // map
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$501")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Nov 1 - 6")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(listing: DeveloperPreview.shared.listings[1])
    }
}
