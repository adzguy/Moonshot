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
    
    @State private var isOn = false
    @State private var crew = [Astronaut]()
    
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts, missions: self.missions)) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        
                        Text(!self.isOn ? mission.launchDateDisplay : "")
                        
//                        Text(self.isOn ? mission.launchDateDisplay : mission.crew.compactMap { role in
//                            return self.astronauts.first { (a: Astronaut) -> Bool in
//                                a.id == role.name
//                            }?.name
//                        }.joined(separator: "\n"))
                    }
                }
            }
        .navigationBarTitle("Moonshot")
        .navigationBarItems(trailing:
            Button(action: {
                self.isOn.toggle()
            }) {
                Text(isOn ? "Show Dates" : "Show Names")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
