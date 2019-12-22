//
//  ContentView.swift
//  Moonshot
//
//  Created by Davron on 12/22/19.
//  Copyright © 2019 Davron. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("example")
                    //.resizable()
                    //.aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
