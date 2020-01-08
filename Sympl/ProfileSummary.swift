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
            
            ZStack {
                
               
                VStack(alignment: .center){
                    
                    Text(profile.handle)
                    Spacer()
                    Image(profile.picture)
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Spacer()
                    Text(profile.bio).font(.caption)
                }.frame(height: 300, alignment: .leading)
                
            }.frame(width: 500, height: 300)
        .background(Color("BackgroundGray")).edgesIgnoringSafeArea(.horizontal)

                
        
        
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
