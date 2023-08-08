//
//  MathLevel3View.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI

struct MathLevel3View: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("mathlogo")
                        .resizable()
                        .frame(width: 400, height: 200)
                        .padding()
                    
                    Text("Multiplication and Division!")
                    
                    Spacer()
                    
                    NavigationLink(destination: MultiplicationView()) {
                        Image("multiplication")
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: DivisionView()) {
                        Image("division")
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                }
            }
        }
    }
}

struct MathLevel3View_Previews: PreviewProvider {
    static var previews: some View {
        MathLevel3View()
    }
}
