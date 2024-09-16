//
//  DetailView.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import SwiftUI

struct DetailView: View {
    
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name)
            Image(pokemon.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }.navigationTitle(pokemon.name)
    }
}

#Preview {
    DetailView(pokemon:
                Pokemon(
                    name:"Jolteon",
                    about:"It concentrates the weak electric charges emitted by its cells and launches wicked lightning bolts.",
                    hp: 4,
                    atk: 4,
                    def: 4,
                    spatk: 6,
                    spdef: 5,
                    spd: 7,
                    image: "electric-jolteon")
    )
}


