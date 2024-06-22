//
//  SignupView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 21/06/24.
//

import SwiftUI

struct SignupView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var birthdate: Date = Date()
    
    var body: some View {
        VStack {
            Form {
                Section {
                    
                    Text("Data Personal")
                    
                    TextField("Name",text:$name).textContentType(.name)
                    TextField("E-mail",text:$email).textContentType(.emailAddress)
                    DatePicker("Birthdate",selection: $birthdate)
                    
                } header: {
                    Text("Cadaster").bold().font(.title)
                }
                
                Section {
                    Text("Address")

                    TextField("Name",text:$name).textContentType(.name)
                    TextField("Name",text:$name).textContentType(.name)
                    TextField("Name",text:$name).textContentType(.name)
                    TextField("Name",text:$name).textContentType(.name)
                } footer: {
                    Button(action: { }) { Text("asdkald")}.buttonStyle(.borderedProminent)
                }
                
            }.foregroundColor(.black).tint(.green)
        }
        
    }
}

#Preview {
    SignupView()
}
