//
//  DeveloperPreview.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 29/10/23.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            ownerName:"Anu",
            ownerImageUrl: "",
            numberOfBedrooms: 1,
            numberofBathrooms: 1,
            numberOfGuests: 1,
            numberOfBeds: 1,
            pricePerNight: 83,
            latitude: 51.47965644432142,
            longtitude: -0.17694002100624326,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "Casa Anthony",
            city: "Greater London",
            state: "England",
            title: "Casa Anthony (Private Room 25 min to Canary Wharf)",
            rating: 4.93,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            ownerName:"Sagrario",
            ownerImageUrl: "",
            numberOfBedrooms: 1,
            numberofBathrooms: 1,
            numberOfGuests: 1,
            numberOfBeds: 1,
            pricePerNight: 55,
            latitude: 39.47898249767481,
            longtitude: -0.32294520999048143,
            imageURLs: ["listing-5", "listing-6", "listing-7", "listing-8"],
            address: "Malvarrosa beach (Valencia)",
            city: "Valencia",
            state: "Spain",
            title: "Enjoy historic Valencia and close to the beach.",
            rating: 4.87,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        )
    ]
}
