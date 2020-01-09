//
//  ProfileEditor.swift
//  Sympl
//
//  Created by Aina Phakhruddin on 1/9/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    var body: some View {
        ZStack {
            
            VStack{
            VStack{
            VStack(alignment: .center){
                
                Text(profile.handle)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .frame(width: 100, alignment: .center)
                    .offset(y: -50.0)
                Spacer()
                
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
//                TextField($bio)
                TextField("Bio", text: $profile.bio)
            }.frame(width: 400, height: 100, alignment: .topLeading)
        .background(Color.white).edgesIgnoringSafeArea(.horizontal)
            .padding(.all)
            
            }.padding(.bottom, 350)
            
            Spacer()
                
            VStack(alignment: .leading){
            Text("More to come soon!")
            }
            }
            
        
            
        }.frame(width: 500, height: 300)
        .offset(y: 20)
        
       
        
            
        
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
