//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Nur Khadr on 2025-02-13.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
        
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me") {
                let message1 = "You Are Awsome!"
                let message2 = "You Are Great!"
                let imageString1 = "sun.max.fill"
                let imageString2 = "hand.thumbsup"
//                
//                
//                if message == message1 {
//                    message = message2
//                    imageString = imageString2
//                } else {
//                        message = message1
//                    imageString = imageString1
//                    }
                message = (message == message1 ? message2 : message1)
                imageString = (imageString == imageString1 ? imageString2 : imageString1)
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
