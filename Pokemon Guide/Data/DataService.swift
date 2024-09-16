//
//  DataService.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import Foundation


struct DataService {
    func getData() -> [Category] {
        if let url = Bundle.main.url(forResource: "pokemonData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let categories = try decoder.decode([Category].self, from: data)
                
                return categories
            } catch {
                print("Error decoding JSON: \(error)")
                return []
            }
            
        } else {
            print("JSON file not found")
            return []
        }
    }
}
