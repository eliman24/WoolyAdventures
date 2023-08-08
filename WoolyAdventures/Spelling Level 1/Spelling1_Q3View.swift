//
//  Words1_Q3View.swift
//  Words_Section
//
//  Created by Elisabeth Manalo on 8/2/23.
//

import SwiftUI
import AVFAudio
private var audioPlayer : AVAudioPlayer?

struct Spelling1_Q3View: View {
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    @State var q1: Bool = false
    @State var q2: Bool = false
    @State var q3: Bool = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("sheep_bg")
                    .resizable()
                    .frame(width: 390.0, height: 880.0)
                
                VStack {
                    Spacer()
                    
                    Text("What letter do these words start with?")
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            self.bookSound()
                        } label: {
                            Image(systemName: "book.fill")
                                .resizable()
                                .frame(width: 170.0, height: 170.0)
                        }
                        Button {
                            self.bookSound()
                        } label: {
                            Image(systemName: "speaker.fill")
                                .resizable()
                                .frame(width: 80.0, height: 100.0)
                        }
                    }
                    
                    Spacer()
                    
                    
                    HStack {
                        Spacer()
                        
                        Button("C ") {
                            self.incorrect = true
                            self.dududu()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.green)
                        
                        
                        Spacer()
                        
                        Button("H ") {
                            self.incorrect = true
                            self.dududu()
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color.red)
                        
                        Spacer()
                        
                        Button("B ") {
                            self.correct = true
                            self.yay()
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
            SpellingCorrectView1(correct: .constant(true), q1: .constant(false), q2: .constant(false), q3: .constant(true))
        } else if incorrect {
            SpellingIncorrectView1(incorrect: .constant(true), q1: .constant(false), q2: .constant(false), q3: .constant(true))
        }
    }
    
    func bookSound() {
       let resourcePath = Bundle.main.url(forResource: "book", withExtension: "mp3")

       
       do {
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

struct Spelling1_Q3View_Previews: PreviewProvider {
    static var previews: some View {
        Spelling1_Q3View()
    }
}
