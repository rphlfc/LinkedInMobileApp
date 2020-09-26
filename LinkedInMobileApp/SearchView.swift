//
//  SearchView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 24/09/20.
//

import SwiftUI

struct SearchView: View {
    @State var search = ""
    
    var body: some View {
        HStack(spacing: 15) {
            NavigationLink(
                destination: ProfileView(),
                label: {
                    Image("profile1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                })
            
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 40)
                .foregroundColor(Color.white)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(.leading, 8)
                            .foregroundColor(Color(#colorLiteral(red: 0.7685593963, green: 0.7686710954, blue: 0.7685348988, alpha: 1)))
                        
                        TextField("Search", text: self.$search)
                    }
                )
            
            Button(action: {}, label: {
                Image(systemName: "bubble.left.and.bubble.right")
                    .foregroundColor(Color(#colorLiteral(red: 0.5411272645, green: 0.5412079692, blue: 0.5411095023, alpha: 1)))
                    .frame(width: 40, height: 40)
                    .background(Color.white)
                    .cornerRadius(10)
            })
        }
        .padding()
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0.0, y: 0.0)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
