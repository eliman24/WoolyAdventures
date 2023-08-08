//
//  ContentView.swift
//  Spelling_Section
//
//  Created by Elisabeth Manalo on 8/2/23.
//

import SwiftUI

struct MathLevelsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("MATH")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    // LEVEL 1
                    NavigationLink(destination: Math1_Q1View()) {
                        Text("LEVEL 1")
                            .font(.largeTitle)
                    }
                    Text("Count the shapes!")
                        .font(.title)

                    HStack {
                        Image(systemName: "circle.fill")
                        Image(systemName: "square.fill")
                        Image(systemName: "triangle.fill")
                    }
                    
                    // LEVEL 2
                    NavigationLink(destination: MathLevel2View()) {
                        Text("\nLEVEL 2")
                            .font(.largeTitle)
                    }
                    Text("Add and Subtract!")
                        .font(.title)

                    HStack {
                        Image(systemName: "plus.square.fill")
                        Image(systemName: "minus.slash.plus")
                        Image(systemName: "plus.square")
                        
                    }
                    
                    // LEVEL 3
                    Group {
                        NavigationLink(destination: MathLevel3View()) {
                            Text("\nLEVEL 3")
                                .font(.largeTitle)
                        }
                        Text("Multiply and Divide!")
                            .font(.title)

                        HStack {
                            Image(systemName: "multiply.circle.fill")
                            Image(systemName: "multiply.circle")
                            Image(systemName: "divide.circle.fill")
                            Image(systemName: "divide.circle")
                        }
                    }
                    
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct MathLevelsView_Previews: PreviewProvider {
    static var previews: some View {
        MathLevelsView()
    }
}
