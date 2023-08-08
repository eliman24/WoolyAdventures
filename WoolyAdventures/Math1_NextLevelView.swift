//
//  Math1_NextLevelView.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI

struct Math1_NextLevelView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(hue: 0.9, saturation: 0.1, brightness: 0.9)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("NEXT LEVEL:")
                            .font(.largeTitle)
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                        Image(systemName: "minus.circle.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                    }
                    
                    NavigationLink(destination: MathLevel2View()) {
                        Image(systemName: "arrowshape.right.fill")
                            .resizable()
                            .frame(width: 130.0, height: 100.01)
                    }
                }
            }
            
        }
    }
}

struct Math1_NextLevelView_Previews: PreviewProvider {
    static var previews: some View {
        Math1_NextLevelView()
    }
}
