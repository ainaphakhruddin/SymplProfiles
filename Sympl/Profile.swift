//
//  Profile.swift
//  Sympl
//
//  Created by Aina Phakhruddin on 1/8/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import Foundation

struct Profile: Hashable, Codable {
    

    var handle: String
    var picture: String
    var bio: String
    
    static let `default` = Self(handle: "@aina", picture: "student", bio: "CompSci Student")
    
    
}
