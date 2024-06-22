//
//  ContentView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var active: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Circle()
                    .fill(.green)
                    .padding()
                    .overlay(Image(systemName: "figure").font(.system(size: 150)).foregroundColor(.white))
                Text("PET IA").font(.system(size: 20)).bold()
                
                    NavigationLink(destination: LoginView(), isActive: $active) {
                        Text("teste")
                        EmptyView()
                    }
                }
            }.padding()
        }
}

// Cria o preview do app quando carregar
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    ContentView()
}
