//
//  CorrectView.swift
//  Spelling_Section
//
//  Created by Elsaibeth Manalo on 8/2/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct SpellingCorrectView1: View {
    @Binding var correct: Bool
    
    @Binding var q1: Bool
    @Binding var q2: Bool
    @Binding var q3: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
//                Image("sheep_bg2")
//                    .resizable()
//                    .frame(width: 390.0, height: 880.0)
                
                VStack {
                    if q1 {
                        NavigationLink(destination: Spelling1_Q2View()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                        }
                    }
                    else if q2 {
                        NavigationLink(destination: Spelling1_Q3View()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                        }
                    } else if q3 {
                        Text("Next Level")
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                        }
                    }
                }
            }
        }
    }
}

struct SpellingCorrectView1_Previews: PreviewProvider {
    static var previews: some View {
        SpellingCorrectView1(correct: .constant(true), q1: .constant(true), q2: .constant(true), q3: .constant(true))
    }
}
