//
//  ZipcodeStruct.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import Foundation
struct ZipcodeStruct: Codable {
    var cep: String;
    var logradouro: String?;
    var uf: String?;
    var complemento:String?;
    var ibge: String?;
    var bairro: String?;
}
