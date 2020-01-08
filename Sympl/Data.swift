//
//  Data.swift
//  Sympl
//
//  Created by Aina Phakhruddin on 1/7/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit
import SwiftUI

let profileData: [Profile] = load("profiles.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
