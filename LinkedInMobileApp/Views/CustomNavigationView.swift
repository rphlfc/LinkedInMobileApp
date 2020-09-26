//
//  CustomNavigationView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 25/09/20.
//

import SwiftUI

struct CustomNavigationView: View {
    var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.white.opacity(0.7))
                    .clipShape(Circle())
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.system(size: 20))
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.white.opacity(0.7))
                    .clipShape(Circle())
            })
        }
        .padding()
    }
}

//struct CustomNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomNavigationView()
//    }
//}
