//
//  ExploreView.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 15.10.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestionationView = false
    @StateObject var viewModel = ExploreVIewModel(service: ExploreService())

    var body: some View {
        if showDestionationView {
            DestinationSearchView(show: $showDestionationView, viewModel: viewModel)
        } else {
            NavigationStack  {
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestionationView.toggle()
                            }
                        }
                    LazyVStack(spacing:  32){
                        ForEach(viewModel.listings, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height:400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                        
                    }
                }
                .padding()
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
