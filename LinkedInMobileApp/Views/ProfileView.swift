//
//  ProfileView.swift
//  LinkedInMobileApp
//
//  Created by Raphael Cerqueira on 24/09/20.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("post")
                .resizable()
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .frame(height: 460)
                .edgesIgnoringSafeArea(.top)

            VStack {
                VStack {
                    CustomNavigationView(presentationMode: self.presentationMode)
                    
                    Image("profile1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .cornerRadius(45)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    Text("Rohan Kurniwan")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text("Founder at Doloris")
                        .font(.system(size: 22, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    HStack {
                        Image(systemName: "mappin")
                        
                        Text("Banten, Indonesia")
                    }
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top)
                    
                    ConnectionsAndViewsView()
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("About")
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("Hello, I am Rohan Kurniawan, a founder at Doloris based at Cilegon, Banten.")
                                    .foregroundColor(.gray)
                                    .padding(.top, 8)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .padding()
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Activity")
                                .font(.system(size: 20, weight: .bold))
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(Color(#colorLiteral(red: 0.008146637119, green: 0.6660293937, blue: 0.07957937568, alpha: 1)))
                                
                                VStack(alignment: .leading) {
                                    Text("Gojek's New Transport Design")
                                        .font(.system(size: 18))
                                    
                                    Text("Anda mengomentari ini\n1 minute ago")
                                        .foregroundColor(.gray)
                                        .padding(.top, 8)
                                }
                                .padding(.leading)
                                
                                Spacer()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding([.leading, .bottom, .trailing])
                        
                        VStack(alignment: .leading) {
                            Text("Experience")
                                .font(.system(size: 20, weight: .bold))
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4284614921, blue: 0.6659035087, alpha: 1)))
                                
                                VStack(alignment: .leading) {
                                    Text("Founder at Doloris")
                                        .font(.system(size: 18))
                                    
                                    Text("10 September, 2020\nCilegon, Banten, Indonesia")
                                        .foregroundColor(.gray)
                                        .padding(.top, 8)
                                }
                                .padding(.leading)
                                
                                Spacer()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding([.leading, .bottom, .trailing])
                    }
                }
                .shadow(color: Color.black.opacity(0.05), radius: 3, x: 0.0, y: 0.0)
            }
        }
        .background(Color(#colorLiteral(red: 0.9460805058, green: 0.9408243895, blue: 0.9539150596, alpha: 1)))
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


