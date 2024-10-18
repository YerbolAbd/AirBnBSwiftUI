//
//  DeveloperPreview.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 16.10.2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Tiffany Mao",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["villa-1", "room-1", "room-1.1", "bathroom-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            listingFeatures: [.selfCHeckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Carlos Gelatto",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 3,
            pricePerNight: 1299,
            latitude: 28.1901765,
            longitude: -82.4452911,
            imageUrls: ["villa-2", "room-2", "room-2.2", "bathroom-2"],
            address: "124 Main St",
            city: "Land O' Lakes",
            state: "Florida",
            title: "J. Cena Villa",
            rating: 5.00,
            listingFeatures: [.selfCHeckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Angela Laurens",
            ownerImageUrl: "female-profile-photo2",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 5,
            numberOfBeds: 5,
            pricePerNight: 712,
            latitude: 53.1974453,
            longitude: -2.354905,
            imageUrls: ["villa-3", "room-3", "room-3.3", "bathroom-3"],
            address: "124 Main St",
            city: "Holmes Chaples",
            state: "England",
            title: "Sherlock Villa",
            rating: 4.99,
            listingFeatures: [.selfCHeckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        )
    ]
}
