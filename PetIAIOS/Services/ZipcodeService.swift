//
//  ZipcodeService.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 24/06/24.
//

import Foundation
class ZipcodeService {
    private var urlApi: String =  "https://viacep.com.br/ws/"
    private var zipcode: String = ""
    
    static let shared = ZipcodeService()
    
    public func getZipcode() -> String {
        return self.zipcode
    }
    
    public func setZipcode(value: String) -> Void {
        self.zipcode = value
    }
    
    public func fetchZipcode(zipcode: String, completionHandler: @escaping (ZipcodeStruct?, Error?) -> Void) {
        let url: URL = URL(string: urlApi + zipcode + "/json")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching data: \(error)")
                completionHandler(nil, error)
                return
            }
            
//            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
//                print("Unexpected response status code: \(response)")
//                completionHandler(nil, error)
//                return
//            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let zipcodeStruct = try decoder.decode(ZipcodeStruct.self, from: data)
                    completionHandler(zipcodeStruct, nil)
                } catch {
                    print("Error decoding JSON: \(error)")
                    completionHandler(nil,error)
                }
            }
        }.resume()
    }
}
