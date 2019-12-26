//
//  Astronaut.swift
//  Moonshot
//
//  Created by Davron on 12/22/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    
    
    var image: String {
        "\(id)"
    }
    var displayDescription: String {
        "\(description)"
    }
    
    var displayName: String {
        "\(name)"
    }
}
