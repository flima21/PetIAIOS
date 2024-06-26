//
//  UserProfileView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import SwiftUI

struct SettingsProfileView: View {
    @State private var itemsMenu: [SettingsItems] = SettingsItems.getAllMenu()
    @State private var logged: Int = 0
    @State private var screen: Int? = nil
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(itemsMenu) { items in
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Image(systemName: items.icon)
                                Text(items.name).tag(items.id)
                            }
                        }
                    }
                    
                    Button(action: {
                        if (true) { logged = 1; screen = 1}
                    }){
                        HStack {
                            Image(systemName: "key")
                            Text("Log out")
                        }
                    }
                    .background(
                        NavigationLink(destination: LoginView(), tag: logged, selection: $screen) { }
                    )

                }.navigationTitle("Settings")
                
            }
            MainView()
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SettingsProfileView()
}
