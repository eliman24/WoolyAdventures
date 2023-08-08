//
//  Words1_Q1View.swift
//  Words_Section
//
//  Created by Elisabeth Manalo on 8/2/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct Spelling1_Q1View: View {
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    @State var q1: Bool = true
    @State var q2: Bool = false
    @State var q3: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
//                Image("sheep_bg")
//                    .resizable()
//                    .frame(width: 390.0, height: 880.0)
                
                VStack {
                    Spacer()
                    Text("What letter does this word start with?")
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            self.appleSound()
                        } label: {
                            Image(systemName: "apple.logo")
                                .resizable()
                                .frame(width: 150.0, height: 180.0)
                                .foregroundColor(Color.pink)
                        }
                        Button {
                            self.appleSound()
                        } label: {
                            Image(systemName: "speaker.fill")
                                .resizable()
                                .frame(width: 80.0, height: 100.0)
                                .foregroundColor(Color.pink)
                        }
                    }
                    
                    Spacer()
                    
                    
                    HStack {
                        Spacer()
                        
                        Button("A ") {
                            self.correct = true
                            self.yay()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.green)
                        
                        
                        Spacer()
                        
                        Button("E ") {
                            self.incorrect = true
                            self.dududu()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.red)
                        
                        Spacer()
                        
                        Button("I ") {
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
            SpellingCorrectView1(correct: .constant(true), q1: .constant(true), q2: .constant(false), q3: .constant(false))
        } else if incorrect {
            //make array of things to say
            SpellingIncorrectView1(incorrect: .constant(true), q1: .constant(true), q2: .constant(false), q3: .constant(false))
        }
    }
    
    func appleSound() {
       let resourcePath = Bundle.main.url(forResource: "apple", withExtension: "mp3")

       
       do{
         //initializing the audio player with the resource path
         audioPlayer = try AVAudioPlayer(contentsOf: resourcePath!)
         
         //play the audio
         audioPlayer?.play()
        
        //stop the audio
       // audioPlayer?.stop()
           
       } catch{
       //error handling
         print(error.localizedDescription)
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
           
       } catch{
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
        
        //stop the audio
       // audioPlayer?.stop()
           
       } catch{
       //error handling
         print(error.localizedDescription)
     }
   }
}

struct Spelling1_Q1View_Previews: PreviewProvider {
    static var previews: some View {
        Spelling1_Q1View()
    }
}
