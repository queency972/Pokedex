//
//  PokemonMove.swift
//  Pokedex
//
//  Created by Steve Bernard on 04/02/2021.
//

import Foundation

struct PokemonMove: Codable {
    struct MoveType: Codable {
        let name: String
        let url: URL
    }

    let id: Int
    let name: String
    let power: Int
    let accuracy: Int
    let pp: Int
    let type: MoveType
}
