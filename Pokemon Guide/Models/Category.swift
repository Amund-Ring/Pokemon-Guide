//
//  Category.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import Foundation

struct Category: Identifiable, Codable {
    let id: UUID = UUID()
    let type: String
    let pokemon: [Pokemon]
}


