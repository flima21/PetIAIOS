//
//  LoginView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 20/06/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Circle().padding().frame(width: 150,height: 150)
        }
        
        VStack{
            TextField("E-mail", text: $email).textContentType(.emailAddress)
            SecureField("Password", text: $password)

            // Button to login
            Button(action: { }) {
                HStack {
                    Image(systemName: "figure")
                    Text("Sign in")
                }
            }.buttonStyle(.borderedProminent).frame(maxWidth: .infinity)
            
        }.padding([.trailing, .top,.leading])
        .textFieldStyle(.roundedBorder)
        
        VStack {
            HStack {
                Button(action: { }) {
                    HStack {
                        Image(systemName: "figure.google")
                        Text("Google")
                    }
                }.buttonStyle(.borderedProminent)
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "figure")
                        Text("Sign up")
                    }
                }.buttonStyle(.borderedProminent)
            }
        }
        
        VStack {
            Button(action: { }) { Text("Reset Password")}
        }
    }
}

#Preview {
    LoginView()
}
