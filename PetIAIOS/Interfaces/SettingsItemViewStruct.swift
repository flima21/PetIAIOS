//
//  SettingsItemViewStruct.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import Foundation
import SwiftUI
enum SettingsItemViewStruct: String, CaseIterable, Identifiable {
    case profile, faq
    var id: Self { self }
    
    public static func getDestination(cases: SettingsItemViewStruct) -> any View {
        if cases == self.profile { return EmptyView() }
        if cases == self.faq { return EmptyView() }
        
        return EmptyView()
    }
    
    
}

struct SettingsItems: Identifiable {
    var id: String
    var destination: String
    var name: String
    var icon: String
    
    public static func getAllMenu() -> [SettingsItems] {
        return [
            SettingsItems(id: "account", destination: "1", name: "Account", icon: "person"),
            SettingsItems(id: "profile", destination: "1", name: "Profile", icon: "person.crop.circle"),
            SettingsItems(id: "pets", destination: "1", name: "Pets", icon: "dog"),
            SettingsItems(id: "about", destination: "1", name: "About Pet IA", icon: "bird"),
            SettingsItems(id: "faq", destination: "1", name: "FAQ", icon: "exclamationmark.circle"),
            SettingsItems(id: "logout", destination: "1", name: "Log Out", icon: "arrow.forward")
        ]
    }
}
