//
//  ProfileSummary.swift
//  Sympl
//
//  Created by Aina Phakhruddin on 1/8/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    var body: some View {
        VStack {
            
            EditButton().font(.callout)
                .offset(x: 165, y: 20)
                .padding(.top)
                            
                .edgesIgnoringSafeArea(.top)
                .frame(width: 30, height: 10)

            HStack(alignment: .center){
                Text(profile.handle)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .frame(width: 100, alignment: .center)
                   
            }
            

            

            ZStack {
                
               
                VStack{
                VStack(alignment: .center){
                    
                    
                    Spacer()
                        
                    Divider()
                    
                    
                }.frame(width: 500, height: 200, alignment: .center)
            .background(Color("BackgroundGray")).edgesIgnoringSafeArea(.horizontal)
                    .offset(y: 50.0)
                    
                Image(profile.picture)
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100, alignment: .center)
                    .offset(y: -22.5)
                    .shadow(radius: 10)
                    
                    
                Spacer()
                
                VStack(alignment: .center){
                    Text(profile.bio)
                        .font(.caption)
                }.frame(width: 400, height: 100, alignment: .topLeading)
            .background(Color.white).edgesIgnoringSafeArea(.horizontal)
                .padding(.all)
                
                }
                
            }.frame(width: 500, height: 300)
                .offset(y: 20)
        
        Spacer()
        
            ZStack {
                
               
                Divider()
                    .foregroundColor(Color.black)
                
                VStack(alignment: .leading){
                Text("Questions")
                    .padding(.horizontal)
                    .padding(.top)
                    
                Spacer()
                Divider()
                Text("Answers")
                   .padding(.horizontal)
                    .padding(.top)
                Spacer()


                
                }.frame(height: 375, alignment: .topLeading)              .background(Color("SymplYellow").opacity(0.75).accentColor(Color("Black")))
                    .padding(.horizontal, 40)
                
               
            }
            
            
        }
//        .scaledToFill()
        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
