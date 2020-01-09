//
//  ProfileHost.swift
//  Sympl
//
//  Created by Aina Phakhruddin on 1/9/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var mode
    @EnvironmentObject var userData: UserData
    @State var draftProfile = Profile.default
    
 var body: some View {
        VStack{
            HStack {
                
                Button(action: {
                       self.draftProfile = self.userData.profile
                       self.mode?.animation().wrappedValue = .inactive
                   })
                {
                    Text("Cancel")
                }
                           
               Spacer()
               
               EditButton()
            }
            if self.mode?.wrappedValue == .inactive
            {
            ProfileSummary(profile: draftProfile)
            }
            else
            {
                ProfileEditor(profile: $draftProfile)
                .onAppear
                    {
                        self.draftProfile = self.userData.profile
                        
                }
            .onDisappear
                {
                    self.userData.profile = self.draftProfile
                }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
        .environmentObject(UserData())
        
    }
}
