//
//  MainView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            } .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        NavigationLink(destination: MainView()) {
                            Image(systemName: "house")
                        }
                        
                        NavigationLink(destination: PetListView()) {
                            Image(systemName: "dog")
                        }

                        NavigationLink(destination: MainView()) {
                            Image(systemName: "camera")
                        }

                        NavigationLink(destination: MapView()) {
                            Image(systemName: "map")
                        }

                        NavigationLink(destination: SettingsProfileView()) {
                            Image(systemName: "person")
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .tint(.green)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainView()
}
