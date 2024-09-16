//
//  Pokemon.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import Foundation

struct Pokemon: Identifiable, Codable {
    let id: UUID = UUID()
    let name: String
    let about: String
    let hp: Int
    let atk: Int
    let def: Int
    let spatk: Int
    let spdef: Int
    let spd: Int
    let image: String
}
