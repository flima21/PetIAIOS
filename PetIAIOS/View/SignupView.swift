//
//  SignupView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 21/06/24.
//

import SwiftUI


struct SignupView: View {
    // Data personal
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var birthdate: Date = Date()
    @State private var document: String = ""
    @State private var password: String = ""
    
    // Address information
    @State private var address: String = ""
    @State private var number: String = ""
    @State private var state: String = ""
    @State private var city: String = ""
    @State private var neighborhood: String = ""
    @State private var complement: String = ""
    @State private var zipcode: String = ""
    
    @State private var isOnReceiveNotification: Bool = true
    @State private var showAlert: Bool = true
    @State private var ageValid: Bool = false
    @State private var showInformationPassword: Bool = true
    @State private var showInformationDocument: Bool = true
    @State private var selectedGender: GenderStruct = .masculine
    
    @State private var zipCodeApi: ZipcodeStruct?
    @State private var showLoading: Bool = true
    
    @State private var logged: Int = 0
    @State private var screen: Int? = nil

    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Name",text:$name).textContentType(.name).onChange(of: name) {
                        newValue in name = newValue.uppercased()
                    }
                    TextField("E-mail",text:$email).textContentType(.emailAddress).onChange(of: email) {
                        newValue in email = newValue.lowercased()
                    }
                    
                    SecureField("Password",text:$password)
                        .onChange(of: password) {
                            showInformationPassword = !Validation().password(password: password)
                        }
                    
                    
                    if (showInformationPassword) {
                        Text("Requirements").font(.footnote).foregroundStyle(.red).bold()
                        
                        Text("At least 6 characters").font(.footnote).foregroundStyle(.red).bold()
                        Text("At least 1 capital letter").font(.footnote).foregroundStyle(.red).bold()
                        Text("At least 1 number").font(.footnote).foregroundStyle(.red).bold()
                        Text("At least one special character").font(.footnote).foregroundStyle(.red).bold()
                    }
                    
                    
                    DatePicker("Birthdate",selection: $birthdate, displayedComponents: [.date])
                    
                    TextField("CPF",text:$document).onChange(of: document) {
                        showInformationDocument = Validation().cpf(document: document)
                    }
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numbersAndPunctuation)
                    
                    if !showInformationDocument {
                        Text("Invalid Document").foregroundStyle(.red).bold().font(.system(size: 10))
                    }
                    
                    List {
                        Picker("Gender", selection: $selectedGender) {
                            ForEach(GenderStruct.allCases) {
                                cases in Text(cases.rawValue.capitalized).tag(cases.id)
                            }
                        }
                    }
                    
                    Toggle(isOn: $isOnReceiveNotification) {
                        Text("Receive Notifications")
                    }
                    
                } header: {
                    Text("Data Personal").bold()
                }
                
                Section {
                    TextField("Zipcode",text:$zipcode, onEditingChanged: { (editChanged) in
                        if !editChanged {
                            self.getApiZipCode(postcode: zipcode)
                        }
                    })
                    
                    TextField("Address",text:$address)
                    TextField("Number",text:$number)
                    TextField("State",text:$state)
                    TextField("City",text:$city)
                    TextField("Neighborhood",text:$neighborhood)
                    TextField("Complement",text:$complement)
                    
                    Button(action: {
                        if (self.isValidForm()) { logged = 1; screen = 1}
                    }){
                        HStack {
                            Image(systemName: "plus.app")
                            Text("Sign in")
                        }.frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .background(
                        NavigationLink(destination: MainView(), tag: logged, selection: $screen) { }
                    )
                    
                } header: {
                    Text("Address").bold()
                }
            }.tint(.green)
        }
    }
    
    private func getApiZipCode(postcode: String) {
        if (Validation().zipcode(zipcode: zipcode)) {
            showLoading = true
            
            // get the api cep
            ZipcodeService.shared.fetchZipcode(zipcode: zipcode) { (zipCodeApi, error) in
                DispatchQueue.main.async {
                    if let error = error { self.clearFormAddress(); print(error); self.showLoading = false; return; }
                    if let zipCodeApi = zipCodeApi {
                        self.zipCodeApi = zipCodeApi
                        self.setFormAddress(code: self.zipCodeApi)
                        self.showLoading = false
                    }
                }
            }
        }
    }
    
    private func setFormAddress(code: ZipcodeStruct?) {
        self.zipcode = self.zipCodeApi?.cep ?? ""
        self.address = self.zipCodeApi?.logradouro ?? ""
        self.complement = self.zipCodeApi?.complemento ?? ""
        self.state = self.zipCodeApi?.uf ?? ""
        self.city = self.zipCodeApi?.ibge ?? ""
        self.neighborhood = self.zipCodeApi?.bairro ?? ""
    }
    
    private func clearFormAddress() {
        self.zipcode = ""
        self.address = ""
        self.complement = ""
        self.state = ""
        self.city = ""
        self.neighborhood = ""
    }
    
    private func isValidForm() -> Bool {
        if (
            name.isEmpty ||
            email.isEmpty ||
            password.isEmpty ||
            document.isEmpty
        ) { return false }
        
        let validation: Validation = Validation()
        
        if (!validation.cpf(document: document)) { return false }
        if (!validation.email(email: email)) { return false }
        if (!validation.password(password: password)) { return false }
        if (!validation.age(age: birthdate)) { return false }
        
        return true
    }
    
    private func validAge(age: Date) {
        let validation: Validation = Validation()
        
        ageValid = !validation.age(age: age)
    }
    
    private func store() -> Void {
        
    }
}

#Preview {
    SignupView()
}
