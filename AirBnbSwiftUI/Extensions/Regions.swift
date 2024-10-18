//
//  Regions.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 17.10.2024.
//

import CoreLocation

extension CLLocationCoordinate2D {
    static var miami = CLLocationCoordinate2D(latitude: 25.7850, longitude: -80.1936)
    static var landoslake = CLLocationCoordinate2D(latitude: 28.1901765, longitude: -82.4452911)
    static var holmeschaples = CLLocationCoordinate2D(latitude: 53.1974453, longitude: -2.354905)
    
    func regionForCity(_ name: String) -> CLLocationCoordinate2D {
        switch name {
        case "Miami": return CLLocationCoordinate2D(latitude: 25.7850, longitude: -80.1936)
        case "Land O' Lakes": return CLLocationCoordinate2D(latitude: 28.1901765, longitude: -82.4452911)
        case "Holmes Chaples": return CLLocationCoordinate2D(latitude: 53.1974453, longitude: -2.354905)
        default:
            return CLLocationCoordinate2D(latitude: 25.7850, longitude: -80.1936)
        }
    }
}
