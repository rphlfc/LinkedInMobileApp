//
//  ConnectionsAndViewsView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 25/09/20.
//

import SwiftUI

struct ConnectionsAndViewsView: View {
    var body: some View {
        Capsule()
            .frame(height: 80)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("990+")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.1777006686, green: 0.610696435, blue: 0.860540688, alpha: 1)))
                        
                        Text("Connections")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Divider()
                        .padding(.top)
                    
                    Spacer()
                    
                    VStack {
                        Text("550+")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.1777006686, green: 0.610696435, blue: 0.860540688, alpha: 1)))
                        
                        Text("Profile Views")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
            )
            .padding(.horizontal, 40)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0.0, y: 0.0)
    }
}

struct ConnectionsAndViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsAndViewsView()
    }
}
