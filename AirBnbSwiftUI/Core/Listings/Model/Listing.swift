//
//  Listing.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 16.10.2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    
    let id : String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageUrls: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    
    var listingFeatures : [ListingFeatures]
    var amenities : [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Identifiable, Codable, Hashable {
    case selfCHeckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .superHost: return "medal"
        case .selfCHeckIn: return "door.left.hand.open"
        }
    }
    
    var title: String {
        switch self {
        case .superHost: return "Superhost"
        case .selfCHeckIn: return "Self check-in"
        }
    }
    
    var subTitle: String {
        switch self {
        case .superHost: return "Superhosts are experienced, highly rated hosts who are comited to providing greate stars for guests."
        case .selfCHeckIn: return "Check yourself in with keypad."
        }
    }
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int, Identifiable, Codable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }

    var id: Int { return self.rawValue}
}

enum ListingType: Int, Identifiable, Codable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    var id: Int {return self.rawValue}
}
