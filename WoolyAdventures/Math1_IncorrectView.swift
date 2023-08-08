//
//  IncorrectView.swift
//  Spelling_Section
//
//  Created by Elisabeth Manalo on 8/2/23.
//

import SwiftUI

struct Math1_IncorrectView: View {
    
    @Binding var incorrect: Bool
    
    @Binding var q1: Bool
    @Binding var q2: Bool
    @Binding var q3: Bool
    
    @State private var randomMessage = ""
        
    let messages = ["You're getting closer!", "Almost there!", "Try again!", "Keep trying!", "You'll get it!"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hue: 0.9, saturation: 0.1, brightness: 0.9)
                    .ignoresSafeArea()
                
                VStack {
                    Text(randomMessage)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    if q1 {
                        Image(systemName: "1.square.fill")
                            .resizable()
                            .frame(width: 200.0, height: 200.0)
                    }
                    else if q2 {
                        HStack {
                            Image(systemName: "1.circle.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Image(systemName: "2.circle.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Image(systemName: "3.circle.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                        }
                        
                        HStack {
                            Image(systemName: "4.circle.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Image(systemName: "5.circle.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                        }
                        Image(systemName: "6.circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                        
                    } else if q3 {
                        HStack {
                            Image(systemName: "1.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Image(systemName: "2.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                        }
                        
                        HStack {
                            Image(systemName: "3.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Image(systemName: "4.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                        }
                    }
                }
            }
        }
        
        .onAppear {
            // Set the initial random message when the view appears
            getRandomMessage()
                }
    }
    
    func getRandomMessage() {
            randomMessage = messages.randomElement() ?? "Default message"
        }
    
    struct Math1_IncorrectView_Previews: PreviewProvider {
        static var previews: some View {
            Math1_IncorrectView(incorrect: .constant(true), q1: .constant(true), q2: .constant(true), q3: .constant(true))
        }
    }
}
