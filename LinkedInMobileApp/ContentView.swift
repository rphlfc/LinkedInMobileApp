//
//  ContentView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 23/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.8928389549, green: 0.9259823561, blue: 0.9603002667, alpha: 1)).edgesIgnoringSafeArea(.all)
                
                VStack {
                    SearchView()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        NewPostView()
                    
                        ForEach(0 ..< 5) { item in
                            PostView()
                        }
                        .padding(.top)
                        
                        Spacer(minLength: 70)
                    }
                }
                
                CustomTabView()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


