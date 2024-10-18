//
//  ExploreVIewModel.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 17.10.2024.
//

import Foundation

class ExploreVIewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private var listingsCopy = [Listing]()
    private let service: ExploreService
    init(service: ExploreService) {
        self.service = service
        
        Task {await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListing()
            self.listingsCopy = listings
        } catch {
            print("DEBUG: Failed to load listings with error: \(error.localizedDescription)")
        }
    }
    func updateListingsForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        self.listings = filteredListings.isEmpty ? listingsCopy  : filteredListings
    }
}
