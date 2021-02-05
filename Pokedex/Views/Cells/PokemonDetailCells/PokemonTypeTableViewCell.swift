//
//  PokemonTypeTableViewCell.swift
//  Pokedex
//
//  Created by Steve Bernard on 04/02/2021.
//

import UIKit

class PokemonTypeTableViewCell: UITableViewCell {

    private let tagImageName = ".tag"

    @IBOutlet var typesStackView: UIStackView!

    var pokemonTypes: [Pokemon.PokemonType]? {
        didSet {
            guard let pokemonTypes = pokemonTypes else { return }
            typesStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
            typesStackView = self.generateTypesViewForCell(self, withTypes: pokemonTypes)
        }
    }

    func generateTypesViewForCell(_ cell:PokemonTypeTableViewCell, withTypes types:[Pokemon.PokemonType]) -> UIStackView? {
        let stackView = cell.typesStackView
        types.forEach { (pokemonType) in
            let imageName = pokemonType.type.name.capitalized + tagImageName
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFit
            stackView?.addArrangedSubview(imageView)
        }
        return stackView
    }
}
