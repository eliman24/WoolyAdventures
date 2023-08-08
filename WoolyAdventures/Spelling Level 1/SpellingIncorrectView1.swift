//
//  IncorrectView.swift
//  Spelling_Section
//
//  Created by Elisabeth Manalo on 8/2/23.
//

import SwiftUI

struct SpellingIncorrectView1: View {
    @Binding var incorrect: Bool
    
    @Binding var q1: Bool
    @Binding var q2: Bool
    @Binding var q3: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Try Again!")
                    
                    if q1 {
                        Image("AWords")
                            .resizable()
                            .frame(width: 300.0, height: 200.0)
                    }
                    else if q2 {
                        Image("BWords")
                            .resizable()
                            .frame(width: 300.0, height: 200.0)
                    } else if q3 {
                        
                        }
                    }
                }
            }
        }
    }
    
    struct SpellingIncorrectView1_Previews: PreviewProvider {
        static var previews: some View {
            SpellingIncorrectView1(incorrect: .constant(true), q1: .constant(true), q2: .constant(true), q3: .constant(true))
        }
    }
