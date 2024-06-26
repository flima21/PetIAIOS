//
//  PetListView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import SwiftUI

struct PetListView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                List {
                    Section {
                        Text("A List Item")
                        Text("A Second List Item")
                        Text("A Third List Item")
                    } header: {
                        Text("Dogs").bold()
                    }
                    
                    Section {
                        Text("A Third List Item")
                    } header: {
                        Text("Cats").bold()
                    }
                }
                .navigationTitle("Pets List")
                .toolbar { EditButton() }
                
                NavigationLink(destination: PetCadasterView()) {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }.padding()
            }
            
            MainView()
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PetListView()
}
