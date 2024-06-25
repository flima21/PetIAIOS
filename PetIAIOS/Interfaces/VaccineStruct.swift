//
//  VaccineStruct.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import SwiftUI

struct VaccineStruct: Identifiable {
    var id: String
    var name: String
    var isSelected: Bool
    
    static func getVaccines() -> [VaccineStruct] {
        return [
            VaccineStruct(id: UUID().uuidString, name: "Raiva", isSelected: false),
            VaccineStruct(id: UUID().uuidString,name: "Vacina múltipla (V8 ou V10)", isSelected: false),
            VaccineStruct(id:UUID().uuidString,name: "Leucemia Felina (FeLV)", isSelected: false),
            VaccineStruct(id:UUID().uuidString,name: "Imunodeficiência Felina (FIV)", isSelected: false),
            VaccineStruct(id:UUID().uuidString,name: "Gripe Canina (Tosse dos Canis)", isSelected: false),
            VaccineStruct(id:UUID().uuidString,name: "Leishmaniose", isSelected: false),
            VaccineStruct(id:UUID().uuidString,name: "Giárdia", isSelected: false),
        ]
    }
}
