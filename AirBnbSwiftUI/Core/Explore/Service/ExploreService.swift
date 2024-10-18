//
//  ExploreService.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 17.10.2024.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
    
}
