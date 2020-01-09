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
                
               
                
                VStack(alignment: .center){
                    
                    
                    Spacer()
                    Image(profile.picture)
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Spacer()
                    Text(profile.bio).font(.caption)
                }.frame(width: 500, height: 300, alignment: .center)
                .background(Color("BackgroundGray")).edgesIgnoringSafeArea(.horizontal)
                
                VStack(alignment: .center){
                    Text(profile.bio)
                }.frame(width: 500, height: 100, alignment: .center)
                .background(Color.white).edgesIgnoringSafeArea(.horizontal)
                
            }.frame(width: 500, height: 300)
        

                
        
        
        Spacer()
        
        VStack{
            Text("Questions")
        }
        }
        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
