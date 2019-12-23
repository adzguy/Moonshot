//
//  MissionView.swift
//  Moonshot
//
//  Created by Davron on 12/23/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import SwiftUI

struct MissionView: View {
    
    let mission: Mission
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    Image(self.mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geo.size.width * 0.7)
                        .padding(.top)
                    Text(self.mission.description)
                        .padding()
                    
                    Spacer(minLength: 25)
                }
                
            }
        }
        .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
    }
}

struct MissionView_Previews: PreviewProvider {
    static var missons: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        MissionView(mission: missons[0])
    }
}
