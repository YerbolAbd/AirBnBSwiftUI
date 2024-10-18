//
//  ListingItem View.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 15.10.2024.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    var body: some View {
        VStack(spacing: 8) {
            //image
            ListingImageCarouselView(listings: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
    
            HStack (alignment: .top){
                //details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 8){
                        Text("\(listing.pricePerNight)$")
                            .fontWeight(.semibold)
                        
                        Text("night")
                             
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                
                //rating
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
        
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
