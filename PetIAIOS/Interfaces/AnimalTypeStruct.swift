//
//  AnimalType.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import Foundation
struct AnimalTypeStruc: Identifiable {
    let id: String;
    let description: String
    
    static func getAnimalType() -> [AnimalType] {
        return [
            AnimalType(id:"bird", description:"Bird"),
            AnimalType(id:"dog", description:"Dog"),
            AnimalType(id:"cat", description:"Cat")
        ]
    }
}
