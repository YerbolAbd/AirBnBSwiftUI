//
//  WishListVIew.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 16.10.2024.
//

import SwiftUI

struct WishListVIew: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 32) {
                VStack (alignment: .leading, spacing: 4 ){
                    Text("Log in to view your wishlists.")
                        .font(.headline)
                    
                    Text("you can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                    
                }
                Button {
                    
                } label: {
                Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 320, height: 32)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("WhishLists")
        }
    }
}

#Preview {
    WishListVIew()
}
