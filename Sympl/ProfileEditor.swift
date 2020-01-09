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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
