//
//  PokemonNameTableViewCell.swift
//  Pokedex
//
//  Created by Steve Bernard on 04/02/2021.
//

import UIKit

class PokemonNameTableViewCell: UITableViewCell {

    @IBOutlet var pokemonNameLabel: UILabel!

    var pokemonName: String? {
        didSet {
            guard let pokemonName = pokemonName else { return }
            pokemonNameLabel.text = pokemonName.capitalized
        }
    }
}
