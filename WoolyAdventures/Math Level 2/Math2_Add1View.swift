//
//  Math2_Add1View.swift
//  WoolyAdventures
//
//  Created by Elisabeth Manalo on 8/4/23.
//

import SwiftUI
import AVFoundation
private var audioPlayer : AVAudioPlayer?

struct Math2_Add1View: View {
    
    @State private var correct: Bool = false
    @State private var incorrect: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(hue: 0.167, saturation: 0.204, brightness: 0.956)
                          .ignoresSafeArea()
                VStack {
                    Text("Solve This: ")
                    Image("threeFour")
                        .resizable()
                        .frame(width:400, height: 500)
                    
                    HStack{
                        Button {
                            self.correct = true
                            self.yay()
                        } label: {
                            Image("number7")
                                .resizable()
                                .frame(width: 100, height:100)
                            
                        }
                        
                        Button {
                            self.incorrect = true
                            self.dududu()
                        } label: {
                            Image("number5")
                                .resizable()
                                .frame(width:100, height:100)
                    
                        }
                        
                        Button {
                            self.incorrect = true
                            self.dududu()
                        } label: {
                            Image("number4")
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
                NavigationLink(destination: addSecondQView()) {
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
           
       } catch{
       //error handling
         print(error.localizedDescription)
     }
   }
}

struct Math2_Add1View_Previews: PreviewProvider {
    static var previews: some View {
        Math2_Add1View()
    }
}
