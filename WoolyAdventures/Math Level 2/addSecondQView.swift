//
//  addSecondQiew.swift
//  MathSection
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct addSecondQView: View {
    
   //@State private var welcome = "Welcome to Addition"
 //  @State private var buttonShown = false
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(hue: 0.167, saturation: 0.204, brightness: 0.956)
                          .ignoresSafeArea()
                VStack {
                    Text("Solve This: ")
                        .font(.largeTitle)
                    
                    Image("sevenFive")
                        .resizable()
                        .frame(width:400, height: 500)
                    
                    HStack{
                        Button {
                            self.incorrect = true
                            self.dududu()
                        } label: {
                            Image("number7")
                                .resizable()
                                .frame(width: 100, height:100)
                            
                        }
                        
                        Button {
                            self.correct = true
                            self.yay()
                        } label: {
                            Image("number12")
                                .resizable()
                                .frame(width:100, height:100)
                    
                        }
                        
                        Button {
                            self.incorrect = true
                            self.dududu()
                        } label: {
                            Image("number9")
                                .resizable()
                                .frame(width:100, height:100)
                        }
                    }
                 
                }
            }
            if correct {
                Text("Correct!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: addThirdQView()) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .frame(width: 140.0, height: 120.0)
                }
            } else if incorrect {
                
            }
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
       
   } catch {
   //error handling
     print(error.localizedDescription)
   }
}
    struct addSecondQ_Previews: PreviewProvider {
        static var previews: some View {
            addSecondQView()
        }
    }
}
