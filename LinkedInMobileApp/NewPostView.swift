//
//  NewPostView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 24/09/20.
//

import SwiftUI

struct NewPostView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "square.and.pencil")
                    .font(.system(size: 20))
                
                TextField("What's on your mind?", text: self.$message)
            }
            .padding()
            
            Divider()
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "photo")
                        .foregroundColor(Color(#colorLiteral(red: 0.2936860919, green: 0.7034204006, blue: 0.8716830611, alpha: 1)))
                    
                    Text("Image")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.gray)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "film")
                        .foregroundColor(Color(#colorLiteral(red: 0.6341388822, green: 0.6276348233, blue: 0.9524522424, alpha: 1)))
                    
                    Text("Image")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.gray)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "paperclip")
                        .foregroundColor(Color(#colorLiteral(red: 0.1790257394, green: 0.715218544, blue: 0.7489575744, alpha: 1)))
                    
                    Text("Image")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.gray)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "newspaper")
                        .foregroundColor(Color(#colorLiteral(red: 0.9429332614, green: 0.5490608215, blue: 0.2982584834, alpha: 1)))
                    
                    Text("Image")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.gray)
                })
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0.0, y: 0.0)
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
