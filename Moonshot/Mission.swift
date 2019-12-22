//
//  Mission.swift
//  Moonshot
//
//  Created by Davron on 12/22/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import Foundation

struct Mission: Identifiable, Codable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
