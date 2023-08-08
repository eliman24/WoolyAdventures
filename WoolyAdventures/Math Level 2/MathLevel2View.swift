//
//  Math2_Q1View.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct MathLevel2View: View {
    
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hue: 0.167, saturation: 0.204, brightness: 0.956)
                          .ignoresSafeArea()
                VStack {
                    Image("mathlogo")
                        .resizable()
                        .frame(width: 400, height: 200)
                        .padding()
                    
                    Text("Addition and Subtraction Practice!")
                    
                    Spacer()
                    
                    NavigationLink(destination: Math2_Add1View()){
                        Image("addition")
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: SubtractionView()) {
                        Image("subtraction")
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MathLevel2View_Previews: PreviewProvider {
    static var previews: some View {
        MathLevel2View()
    }
}
