//
//  PokemonView.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import SwiftUI

struct PokemonView: View {
    
    var category: Category
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: columns) {
                ForEach(category.pokemon) { pokemon in
                    NavigationLink(destination: DetailView(pokemon: pokemon)){
                        Image(pokemon.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
        .navigationTitle(category.type)
    }
}

#Preview {
    PokemonView(category: Category(type: "Electric", pokemon: [
        Pokemon(name: "Pikachu",
                about: "When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.",
                hp: 3,
                atk: 4,
                def: 3,
                spatk: 3,
                spdef: 3,
                spd: 6,
                image: "electric-pikachu"),
        Pokemon(name: "Chinchou",
                about: "It lives in ocean depths beyond the reach of sunlight. It flashes lights on its antennae to communicate with others of its kind.",
                hp: 5,
                atk: 3,
                def: 3,
                spatk: 4,
                spdef: 4,
                spd: 4,
                image: "electric-chinchou"),
        Pokemon(name: "Zapdos",
                about: "This legendary Pokémon is said to live in thunderclouds. It freely controls lightning bolts.",
                hp: 6,
                atk: 6,
                def: 5,
                spatk: 8,
                spdef: 6,
                spd: 6,
                image: "electric-zapdos"),
        Pokemon(name: "Jolteon",
                about: "It concentrates the weak electric charges emitted by its cells and launches wicked lightning bolts.",
                hp: 4,
                atk: 4,
                def: 4,
                spatk: 6,
                spdef: 5,
                spd: 7,
                image: "electric-jolteon")
    ]))
}
