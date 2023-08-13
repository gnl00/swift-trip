//
//  ContentView.swift
//  first
//
//  Created by GnL on 2023/8/13.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            Text("Hello, Swift !!!")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
                .padding()
            
            Button {
                print("click btn")
                
                let utterance = AVSpeechUtterance(string: "hello word")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                let synthesizer = AVSpeechSynthesizer() // 语音合成器
                synthesizer.speak(utterance)
                
            } label: {
                Text("Btn")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.purple)
            .cornerRadius(20)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
