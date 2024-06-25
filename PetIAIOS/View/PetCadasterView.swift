//
//  PetCadasterView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import SwiftUI

struct Ocean: Identifiable, Hashable {
    let name: String
    let id = UUID()
}


private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Indian"),
    Ocean(name: "Southern"),
    Ocean(name: "Arctic")
]

struct PetCadasterView: View {
    @State private var name: String = ""
    @State private var color: String = ""
    @State private var paws: Int = 0
    @State private var bloodType: String = ""
    @State private var animalType: String = "dog"
    @State private var birthdate: Date = Date()
    @State private var deathDate: Date = Date()
    @State private var isAlive: Bool = true
    @State private var isSilvester: Bool = false
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var typeVaccines: [VaccineStruct] = VaccineStruct.getVaccines()
    @State private var typesBlood: [BloodTypeStruct] = BloodTypeStruct.getAllBloodType()
    @State private var animalTypeStruct: [AnimalTypeStruct] = AnimalTypeStruct.getAnimalType()
    @State private var restrictions: String =  ""
    
    var body: some View {
        Form {
            Section {
                Button(action: { }){ Text("Photo") }.buttonStyle(.bordered).frame(maxWidth: .infinity).padding()
                
                TextField("Name", text: $name)
                DatePicker("Birthdate",selection: $birthdate, displayedComponents: [.date])
                
                Picker("Color", selection: $color) { }
                Picker("Paws", selection: $paws) { }
                Picker("Blood Type", selection: $bloodType) { 
                    ForEach(typesBlood) { type in
                        Text(type.name).tag(type.id)
                    }
                }
                
                Picker("Animal Type", selection: $animalType) {
                    ForEach(animalTypeStruct) { type in
                        Text(type.name).tag(type.id)
                    }
                }
                
                Toggle(isOn: $isAlive) { Text("Alive") }
                
                if !isAlive { DatePicker("Death",selection: $deathDate, displayedComponents: [.date]) }
                
                Toggle(isOn: $isSilvester) { Text("Silvester") }
                
                TextField("Weight (Kg)", text: $weight).disabled(!isAlive)
                TextField("Height (cm)", text: $height).disabled(!isAlive)
                
            } header: {
                Text("SAVE YOUR PET").bold()
            }

            Section {
                ForEach($typeVaccines) { $list in
                    Toggle(list.name, isOn: $list.isSelected).disabled(!isAlive)
                }
            } header: {
                Text("Vaccines").bold()
            }
            
            Section {
                Text("Type some restrictios of your pet")
                TextEditor(text: $restrictions).lineLimit(10).disabled(!isAlive)
                
                Button(action:{ }){
                    HStack {
                        Image(systemName: "figure")
                        Text("Save")
                    }.frame(maxWidth: .infinity)
                }.buttonStyle(.borderedProminent)
            } header: {
                Text("Restrictions").bold()
            }

        }
    }
    
    func test() -> Bool {
        return true
    }
}

#Preview {
    PetCadasterView()
}
