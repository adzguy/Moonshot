//
//  ContentView.swift
//  Moonshot
//
//  Created by Davron on 12/22/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text("\(astronauts.count) \(missions.count)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
