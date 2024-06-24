//
//  UserProfileView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: { }){
                    VStack {
                        Image(systemName: "figure")
                        Text("Account")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)//.tint(.green)
                
                Button(action:{ }) {
                    VStack {
                        Image(systemName: "figure")
                        Text("Pets")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)
            }.padding([.leading, .trailing])
            
            HStack {
                Button(action: { }){
                    VStack {
                        Image(systemName: "figure")
                        Text("Veterinarian")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)//.tint(.primary)
                
                Button(action:{ }) {
                    VStack {
                        Image(systemName: "figure")
                        Text("Documents")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)//.tint(.red)
            }.padding([.leading, .trailing])

            HStack {
                Button(action: { }){
                    VStack {
                        Image(systemName: "figure")
                        Text("FAQ")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)//.tint(.primary)
                
                Button(action:{ }) {
                    VStack {
                        Image(systemName: "figure")
                        Text("Log Out")
                    }.frame(maxWidth: .infinity, minHeight: 200)
                }.buttonStyle(.borderedProminent).foregroundColor(.black)//.tint(.red)
            }.padding([.leading, .trailing])
        }
    }
}

#Preview {
    UserProfileView()
}
