//
//  CorrectView.swift
//  Spelling_Section
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct Math2_CorrectView: View {
    
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
                    Text("Correct!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    
                    if q1 {
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 140.0, height: 120.0)
                        }
                    }
                    else if q2 {
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 140.0, height: 120.0)
                        }
                    } else if q3 {
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
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

struct Math2_CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        Math2_CorrectView(correct: .constant(true), q1: .constant(true), q2: .constant(true), q3: .constant(true))
    }
}
