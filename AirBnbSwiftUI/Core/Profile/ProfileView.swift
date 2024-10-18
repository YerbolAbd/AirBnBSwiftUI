//
//  ProfileView.swift
//  AirBnbSwiftUI
//
//  Created by Ербол on 16.10.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            //Login button and title
            VStack(alignment: .leading, spacing: 32) {
                VStack (alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    Text("Log in to start planning your next trip.")
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
                HStack {
                    Text("Don't have an account?")
                        
                    
                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
                
            }
            
            VStack (spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "accessibility", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
