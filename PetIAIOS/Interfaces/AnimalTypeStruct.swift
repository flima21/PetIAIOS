//
//  AnimalType.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import Foundation
struct AnimalTypeStruct: Identifiable {
    let id: String;
    let name: String
    
    static func getAnimalType() -> [AnimalTypeStruct] {
        return [
//            AnimalTypeStruct(id:"bird", name:"Bird"),
            AnimalTypeStruct(id:"dog", name:"Dog"),
            AnimalTypeStruct(id:"cat", name:"Cat"),
            AnimalTypeStruct(id:"other", name:"Other")
        ]
    }
}
