//
//  CorrectView.swift
//  Spelling_Section
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct Math1_CorrectView: View {
    
    @Binding var correct: Bool
    
    @Binding var q1: Bool
    @Binding var q2: Bool
    @Binding var q3: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hue: 0.9, saturation: 0.1, brightness: 0.9)
                    .ignoresSafeArea()
                VStack {
                    if q1 {
                        Text("Correct!\nThere is 1 square!")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: Math1_Q2View()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 140.0, height: 120.0)
                        }
                    }
                    else if q2 {
                        Text("Correct!\nThere are 6 circles!")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: Math1_Q3View()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 140.0, height: 120.0)
                        }
                    } else if q3 {
                        Text("Correct!\nThere are 4 squares!")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: Math1_NextLevelView()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 140.0, height: 120.0)
                        }
                    }
                    
                }
            }
        }
    }
}

struct Math1_CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        Math1_CorrectView(correct: .constant(true), q1: .constant(true), q2: .constant(true), q3: .constant(true))
    }
}
