//
//  Validation.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 22/06/24.
//

import Foundation

class Validation {
    
    init() { }
    
    public func cpf(document: String) -> Bool {
        
        return true
    }
    
    public func email(email: String) -> Bool {
        return true
    }
    
    public func password(password: String) -> Bool {
        return true
    }
    
    public func age(age: Date) -> Bool {
        let calendar = Calendar.current
        let today = Date()
        
        // Calcula a diferença de anos entre a data atual e a data de nascimento
        let ageComponents = calendar.dateComponents([.year], from: age, to: today)
        
        // Verifica se a idade é maior ou igual a 18
        if let age = ageComponents.year { return age >= 18 }
        else { return false }
    }
}
