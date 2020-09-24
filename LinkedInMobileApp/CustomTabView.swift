//
//  CustomTabView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 24/09/20.
//

import SwiftUI

struct CustomTabView: View {
    let items = ["house", "person.2", "plus", "bag", "bell"]
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(0 ..< items.count) { i in
                    HStack {
                        Button(action: {
                            if i != 2 {
                                self.selectedIndex = i
                            }
                        }, label: {
                            VStack {
                                if (i != 2) {
                                    Image(systemName: items[i])
                                        .font(.system(size: 22))
                                        .foregroundColor(Color.gray)
                                    
                                    Circle()
                                        .frame(width: 5, height: 5)
                                        .foregroundColor(self.selectedIndex == i ?  Color(#colorLiteral(red: 0.2794062793, green: 0.5803671479, blue: 0.9985185266, alpha: 1)) : Color.white)
                                        .padding(.top, 0)
                                        .shadow(color: Color(#colorLiteral(red: 0.2794062793, green: 0.5803671479, blue: 0.9985185266, alpha: 1)).opacity(0.1), radius: 3, x: 0.0, y: 0.0)
                                } else {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 0.1777006686, green: 0.610696435, blue: 0.860540688, alpha: 1)))
                                        .overlay(
                                            Image(systemName: "plus")
                                                .font(.system(size: 20))
                                                .foregroundColor(.white)
                                        )
                                        .shadow(color: Color(#colorLiteral(red: 0.1777006686, green: 0.610696435, blue: 0.860540688, alpha: 1)).opacity(0.7), radius: 3, x: 0.0, y: 2.0)
                                }
                            }
                        })
                        
                        if i != self.items.count - 1 {
                            Spacer()
                        }
                    }
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 8)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0.0, y: 0.0)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
