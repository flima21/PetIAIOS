//
//  ResetPasswordView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 21/06/24.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var email: String = ""
    @State private var document: String = ""
    @State private var password: String = ""
    @State private var showInformationDocument: Bool = true
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("E-mail",text:$email).textContentType(.emailAddress).onChange(of: email) {
                        newValue in email = newValue.lowercased()
                    }

                    TextField("CPF",text:$document).onChange(of: document) {
                        showInformationDocument = Validation().cpf(document: document)
                    }
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numbersAndPunctuation)
                    
                    if !showInformationDocument {
                        Text("Invalid Document").foregroundStyle(.red).bold().font(.system(size: 10))
                    }
                    
                    SecureField("Password", text: $password)
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "figure")
                            Text("Reset Password")
                        }.frame(maxWidth: .infinity)
                    }
                    .disabled(!isValidForm())
                    .buttonStyle(.borderedProminent)
                    
                } header: {
                    Text("Reset Your Password").foregroundStyle(.black).bold()
                }
            }
        }
    }
    
    private func isValidForm() -> Bool {
        if (
            email.isEmpty ||
            password.isEmpty ||
            document.isEmpty
        ) { return false }
        
        let validation: Validation = Validation()
        
        if (!validation.cpf(document: document)) { return false }
        if (!validation.email(email: email)) { return false }
        if (!validation.password(password: password)) { return false }

        return true
    }
    
    private func store() -> Void {
        
    }
}

#Preview {
    ResetPasswordView()
}
