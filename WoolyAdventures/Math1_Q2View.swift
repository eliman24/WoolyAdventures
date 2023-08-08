//
//  Math1_Q2View.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct Math1_Q2View: View {
    
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    @State var q1: Bool = false
    @State var q2: Bool = true
    @State var q3: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    Text("Count the Circles!")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                    }
                    
                    HStack {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                    }
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .foregroundColor(Color(hue: 0.37, saturation: 0.211, brightness: 0.77))
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button("6") {
                            self.correct = true
                            self.yay()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.green)
                        
                        Spacer()
                        
                        Button("5") {
                            self.incorrect = true
                            self.dududu()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.red)
                        
                        Spacer()
                        
                        Button("3") {
                            self.incorrect = true
                            self.dududu()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.blue)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    
                    
                }
                .padding()
                
            }
            
        }
        
        if correct {
            // make array of things to say
            Math1_CorrectView(correct: .constant(true), q1: .constant(false), q2: .constant(true), q3: .constant(false))
        } else if incorrect {
            //make array of things to say
            Math1_IncorrectView(incorrect: .constant(true), q1: .constant(false), q2: .constant(true), q3: .constant(false))
        }
    }
    
    func yay() {
       let resourcePath = Bundle.main.url(forResource: "yay", withExtension: "mp3")
        do{
         //initializing the audio player with the resource path
         audioPlayer = try AVAudioPlayer(contentsOf: resourcePath!)
         
         //play the audio
         audioPlayer?.play()
        
        //stop the audio
       // audioPlayer?.stop()
           
       } catch {
       //error handling
         print(error.localizedDescription)
     }
   }
    
    func dududu() {
       let resourcePath = Bundle.main.url(forResource: "wrongAnswer", withExtension: "wav")
        do{
         //initializing the audio player with the resource path
         audioPlayer = try AVAudioPlayer(contentsOf: resourcePath!)
         
         //play the audio
         audioPlayer?.play()
        
       } catch {
       //error handling
         print(error.localizedDescription)
     }
   }
}

struct Math1_Q2View_Previews: PreviewProvider {
    static var previews: some View {
        Math1_Q2View()
    }
}
