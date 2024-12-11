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
        let frontDefault: String? // JSON의 "sprites.front_default"를 나타냄
        
        enum CodingKeys: String, CodingKey {
            case frontDefault = "front_default" // JSON 키 매핑
        }
    }
    
    let sprites: Sprites // JSON의 "sprites" 객체를 나타냄
}
