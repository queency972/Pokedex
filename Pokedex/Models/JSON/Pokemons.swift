//
//  Pokemons.swift
//  Pokedex
//
//  Created by Steve Bernard on 04/02/2021.
//

import Foundation

struct PagedPokemons: Codable {
    struct BriefPokemon: Codable {
        let name: String
        let url: URL
    }
    let count: Int
    let next: URL?
    let previous: URL?
    let results: [BriefPokemon]
}

struct PagedCompletePokemons: Codable {
    struct BriefPokemon: Codable {
        let name: String
        let url: URL
    }
    let count: Int
    let next: URL?
    let previous: URL?
    let results: [Pokemon]
}
