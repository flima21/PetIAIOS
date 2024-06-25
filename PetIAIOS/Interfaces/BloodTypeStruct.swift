//
//  BloodTypeStruct.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import Foundation
struct BloodTypeStruct: Identifiable {
    var id: String
    var name: String
    
    // A+, A-, B+, B-, AB+, AB-, O+ e O-
    
    public static func getAllBloodType() -> [BloodTypeStruct] {
        return [
            BloodTypeStruct(id: "a+", name: "A+"),
            BloodTypeStruct(id: "a-", name: "A-"),
            BloodTypeStruct(id: "b+", name: "B+"),
            BloodTypeStruct(id: "b-", name: "B-"),
            BloodTypeStruct(id: "ab+", name: "AB+"),
            BloodTypeStruct(id: "ab-", name: "AB-"),
            BloodTypeStruct(id: "o+", name: "O+"),
            BloodTypeStruct(id: "o-", name: "O-"),
            BloodTypeStruct(id: "n", name: "Undefined"),
        ]
    }
}
