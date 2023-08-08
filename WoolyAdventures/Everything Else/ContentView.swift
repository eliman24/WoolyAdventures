//
//  ContentView.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color(hue: 0.167, saturation: 0.204, brightness: 0.956)
                    .ignoresSafeArea()

             VStack {
                 Image("woolyAdventures")
                     .resizable()
                     .frame(width: 300, height: 100)

                 NavigationLink(destination: MathLevelsView()){
                     Image("mathlogo")
                         .resizable()
                         .frame(width: 200, height: 100)
                 }

                 NavigationLink(destination: SpellingLevelsView()) {
                     Image("spellinglogo")
                         .resizable()
                         .frame(width: 200, height: 100)
                     }
                 }
                 .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
