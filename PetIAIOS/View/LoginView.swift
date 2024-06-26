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
    @State private var logged: Int = 0
    @State private var screen: Int? = nil
    
    var body: some View {
        
        NavigationStack() {
//            ScrollView {
                VStack{
                    Circle().padding().frame(width: 150,height: 150)
                    
                    
                    VStack{
                        TextField("E-mail", text: $email).textContentType(.emailAddress)
                        SecureField("Password", text: $password)
                            
                        
                        
                        Button(action: {
                            if (self.isValidForm()) { logged = 1; screen = 1}
                        }){
                            HStack {
                                Image(systemName: "key")
                                Text("Sign in")
                            }.frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .background(
                            NavigationLink(destination: SettingsProfileView(), tag: logged, selection: $screen) { }
                        )
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
                                            Image(systemName: "person.badge.key")
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
                                    Image(systemName: "lock")
                                    Text("Reset Password")
                                }.frame(maxWidth: .infinity)
                            }
                        }.buttonStyle(.borderedProminent)
                    }.padding([.trailing, .leading])
                }.tint(.green)
//            }
        }.navigationBarBackButtonHidden(true)
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
