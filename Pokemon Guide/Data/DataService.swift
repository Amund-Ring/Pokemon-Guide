//
//  DataService.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import Foundation


struct DataService {
    
    
    
    
    
    func getData() -> [Category] {
        return [
            Category(type: "Electric", pokemon: []),
            Category(type: "Grass", pokemon: []),
            Category(type: "Fire", pokemon: []),
            Category(type: "Water", pokemon: [])
        ]
    }
}
