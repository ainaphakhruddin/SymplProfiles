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
            
            Text(profile.handle)
            .font(.title)
            
            
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
                }.frame(width: 400, height: 100, alignment: .topLeading)
            .background(Color.white).edgesIgnoringSafeArea(.horizontal)
                .padding(.all)
                
                }
                
            }.frame(width: 500, height: 300)
                .offset(y: 20)
        

        
        Spacer()
        
            VStack(alignment: .leading){
            Text("Questions")
                 .padding(.top)
            Spacer()
            Divider()
                Text("Answers")
                    .padding(.top)
            Spacer()


            
        }.frame(width: 400, height: 375, alignment: .topLeading)
        }
        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
