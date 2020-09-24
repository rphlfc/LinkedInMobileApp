//
//  PostView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 24/09/20.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Image("profile2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Morad Kurniawan")
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3136948943, green: 0.3137449622, blue: 0.3136840165, alpha: 1)))
                        
                        Text("Marketing at Dolores • 10 min ago")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .padding(.top, 8)
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.3136948943, green: 0.3137449622, blue: 0.3136840165, alpha: 1)))
                    })
                }
                
                Text("Doloris is a company that focuses on making service design products and this time we give a...")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.5685759783, green: 0.5686605573, blue: 0.5685573816, alpha: 1)))
                    .padding(.top)
            }
            .padding()
            
            Image("post")
                .resizable()
                .scaledToFit()
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.1777006686, green: 0.610696435, blue: 0.860540688, alpha: 1)))
                    
                    Text("100+")
                        .font(.system(size: 14))
                        .padding(.leading, 0)
                        .foregroundColor(Color(#colorLiteral(red: 0.5332846642, green: 0.5333645344, blue: 0.5332672, alpha: 1)))
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.left")
                    
                    Text("500+")
                        .font(.system(size: 14))
                        .padding(.leading, 0)
                })
                .foregroundColor(Color(#colorLiteral(red: 0.5332846642, green: 0.5333645344, blue: 0.5332672, alpha: 1)))
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.turn.up.right")
                    
                    Text("Share")
                        .font(.system(size: 14))
                        .padding(.leading, 0)
                })
                .foregroundColor(Color(#colorLiteral(red: 0.5332846642, green: 0.5333645344, blue: 0.5332672, alpha: 1)))
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                    
                    Text("Send")
                        .font(.system(size: 14))
                        .padding(.leading, 0)
                })
                .foregroundColor(Color(#colorLiteral(red: 0.5332846642, green: 0.5333645344, blue: 0.5332672, alpha: 1)))
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(15)
        .padding([.horizontal, .bottom])
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0.0, y: 0.0)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
