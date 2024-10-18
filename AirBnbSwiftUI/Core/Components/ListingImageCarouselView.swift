//
//  ListingImageCarouselView.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 15.10.2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listings: Listing
    var body: some View {
        TabView {
            ForEach(listings.imageUrls, id: \.self) { image in
                Image(image)
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listings: DeveloperPreview.shared.listings[0])
}
