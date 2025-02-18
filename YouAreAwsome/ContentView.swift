//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Nur Khadr on 2025-02-13.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
        
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)

            Spacer()
            
            Button("Press Me") {
                let message1 = "You Are Awsome!"
                let message2 = "You Are Great!"

                message = (message == message1 ? message2 : message1)
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
                print(imageNumber)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
