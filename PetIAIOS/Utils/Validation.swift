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
        let numbers = document.compactMap { Int(String($0)) }
        guard numbers.count == 11 else { return false }
        
        let sum1 = (0..<9).map { (10 - $0) * numbers[$0] }.reduce(0, +)
        let checkDigit1 = (sum1 * 10 % 11) % 10
        
        let sum2 = (0..<10).map { (11 - $0) * numbers[$0] }.reduce(0, +)
        let checkDigit2 = (sum2 * 10 % 11) % 10
        
        return checkDigit1 == numbers[9] && checkDigit2 == numbers[10]
    }
    
    public func email(email: String) -> Bool {
        return true
    }
    
    public func password(password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$&*]).{6,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        
        return passwordTest.evaluate(with: password)
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
    
    public func zipcode(zipcode: String) -> Bool {
        return true
    }
}
