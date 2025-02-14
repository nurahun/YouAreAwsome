//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Nur Khadr on 2025-02-13.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var message1 = "You Are Awsome"
    @State private var message2 = "You Are Great"
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
        
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me") {
                if message == message1 {
                    message = message2
                    imageName = "hand.thumbsup"
                } else {
                        message = message1
                        imageName = "sun.max.fill"
                    }
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
