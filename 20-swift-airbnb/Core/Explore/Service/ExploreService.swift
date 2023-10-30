//
//  ExploreService.swift
//  20-swift-airbnb
//
//  Created by Liu Ziyi on 29/10/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
//        return DeveloperPreview().listings
        return DeveloperPreview.shared.listings 
    }
}
