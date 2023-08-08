//
//  ContentView.swift
//  Words_Section
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct SpellingLevelsView: View {
var body: some View {
    NavigationStack {
        ZStack {
            Image("sheep_bg")
                .resizable()
                .frame(width: 390.0, height: 880.0)
            
            VStack {
                Spacer()
                
                // level 1
                Group {
                    NavigationLink(destination: Spelling1_Q1View()) {
                        Text("LEVEL 1\nLearn the Alphabet!")
                            .font(.largeTitle)
                    }
                    HStack {
                        Image(systemName: "a.square.fill")
                        Image(systemName: "b.square.fill")
                        Image(systemName: "c.square.fill")
                    }
                }
                
                //level 2
                Group {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Text("\nLEVEL 2\nSpelling Bee!")
                            .font(.largeTitle)
                    }
                    HStack {
                        Image(systemName: "b.square.fill")
                        Image(systemName: "e.square.fill")
                        Image(systemName: "e.square.fill")
                        
                    }
                }
                
                // level 3
                Group {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Text("\nLEVEL 3\n Nouns, Verbs, and Adjectives!")
                            .font(.largeTitle)
                        }
                    HStack {
                        Image(systemName: "person.circle.fill")
                        Image(systemName: "figure.run.circle.fill")
                        Image(systemName: "hare.fill")
                    }
                }
                
                Spacer()
                
                }
            .padding()
            }
        }
    }
}

struct SpellingLevelsView_Previews: PreviewProvider {
    static var previews: some View {
        SpellingLevelsView()
    }
}
