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
    @State private var showSignupScreen: Bool = true;
    
    var body: some View {
        
        NavigationStack() {
//            ScrollView {
                VStack{
                    Circle().padding().frame(width: 150,height: 150)
                    
                    
                    VStack{
                        TextField("E-mail", text: $email).textContentType(.emailAddress)
                        SecureField("Password", text: $password)
                        
                        NavigationLink("Sign in", value: "teste").navigationDestination(
                            for: String.self
                        ) {
                            value in SignupView()
                        }.buttonStyle(.borderedProminent).disabled(!self.isValidForm()).frame(maxWidth: .infinity)
                    }.padding([.trailing, .top,.leading])
                        .textFieldStyle(.roundedBorder)
                    
                    VStack {
                        HStack {
                            VStack {
                                NavigationLink(destination: SignupView()) {
                                    VStack {
                                        HStack {
                                            Image(systemName: "figure")
                                            Text("Google")
                                        }.frame(maxWidth: .infinity)
                                    }
                                }.buttonStyle(.borderedProminent)
                            }.padding([.leading])
                            
                            VStack {
                                NavigationLink(destination: SignupView()) {
                                    VStack {
                                        HStack {
                                            Image(systemName: "figure")
                                            Text("Sign up")
                                        }.frame(maxWidth: .infinity)
                                    }
                                }.buttonStyle(.borderedProminent)
                            }.padding([.trailing])
                        }
                    }
                    
                    VStack {
                        NavigationLink(destination: ResetPasswordView()){
                            VStack {
                                HStack {
                                    Image(systemName: "figure.archery")
                                    Text("Reset Password")
                                }.frame(maxWidth: .infinity)
                            }
                        }.buttonStyle(.borderedProminent)
                    }.padding([.trailing, .leading])
                }
//            }
        }
    }
    
    private func isValidForm() -> Bool {
        if (email.isEmpty || password.isEmpty) { return false }
        // validacoes
        
        return true
    }
}

#Preview {
    LoginView()
}
