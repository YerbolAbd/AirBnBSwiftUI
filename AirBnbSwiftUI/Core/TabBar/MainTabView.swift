//
//  MainTabView.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 16.10.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
                
            WishListVIew()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        }
    }
}

#Preview {
    MainTabView()
}
