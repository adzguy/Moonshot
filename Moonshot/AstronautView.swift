//
//  AstronautView.swift
//  Moonshot
//
//  Created by Davron on 12/23/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    let missions: [Mission]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width)
                        .clipShape(Rectangle())
                        .overlay(Rectangle().stroke(Color.secondary, lineWidth: 2))
                        .padding(.top)
                    
                    HStack(spacing: 20 ) {
                        ForEach(self.missions) { mission in
                            VStack(spacing: 5){
                                Image(mission.image)
                                    .resizable()
                                    .frame(width: 83, height: 60)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.primary, lineWidth: 1))

                                Text(mission.displayName)
                                    .font(.footnote)
                            }

                        }
                    }
                    
                    Text(self.astronaut.displayDescription)
                        .padding()
                    
                    Spacer(minLength: 25)
                }
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
    
    init(missions: [Mission], astronaut: Astronaut) {
        self.astronaut = astronaut
        
        var matches = [Mission]()
            
        for mission in missions {
            for member in mission.crew {
                if member.name == astronaut.id {
                    matches.append(mission)
                }
            }
        }
        self.missions = matches
    }
}

struct AstronautView_Previews: PreviewProvider {
    
    static var astronauts: Astronaut = Bundle.main.decode("astronauts.json")
    static var missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        AstronautView(missions: missions, astronaut: astronauts )
    }
}
