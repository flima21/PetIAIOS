//
//  GenderStruct.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 22/06/24.
//

import Foundation

enum GenderStruct: String, CaseIterable, Identifiable {
    case feminine, masculine, other
    var id: Self { self }
    
    public static func getCodeById(cases: GenderStruct) -> String {
        if cases == self.other { return "O" }
        if cases == self.feminine { return "F" }
        if cases == self.masculine { return "M" }
        
        return ""
    }
    
    public static func getIdByCode(code: String) -> GenderStruct {
        if code == "F" { return GenderStruct.feminine }
        if code == "M" { return GenderStruct.masculine}
        if code == "O" { return GenderStruct.other }
        
        return GenderStruct.other
    }
}
