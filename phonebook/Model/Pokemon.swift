//
//  Pokemon.swift
//  phonebook
//
//  Created by eden on 12/11/24.
//

import Foundation

// MARK: - Pokemon Model
struct Pokemon: Codable {
    struct Sprites: Codable {
        let frontDefault: String?
        
        enum CodingKeys: String, CodingKey {
            case frontDefault = "front_default"
        }
    }
    
    let sprites: Sprites
}
