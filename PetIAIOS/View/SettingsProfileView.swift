//
//  UserProfileView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import SwiftUI

struct SettingsProfileView: View {
    @State private var itemsMenu: [SettingsItems] = SettingsItems.getAllMenu()
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
                }.navigationTitle("Settings")
            }
        }
        
        VStack {
            Text("Development by").font(.footnote)
        }
    }
}

#Preview {
    SettingsProfileView()
}
