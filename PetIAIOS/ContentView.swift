//
//  ContentView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.green)
                .padding()
                .overlay(Image(systemName: "figure").font(.system(size: 150)).foregroundColor(.white))
            
            Text("PET IA").font(.system(size: 20)).bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
