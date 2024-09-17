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
        
        ScrollView {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    
                    Image(pokemon.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                    
                    VStack(alignment: .leading) {
                        Text("Stats")
                            .font(.headline)
                            .padding(.bottom, 20)
                        Text("HP: \(pokemon.hp)")
                        Text("Attack: \(pokemon.atk)")
                        Text("Defense: \(pokemon.def)")
                        Text("Special Attack: \(pokemon.spatk)")
                        Text("Special Defense: \(pokemon.spdef)")
                        Text("Speed: \(pokemon.spd)")
                    }
                }
                
                Text(pokemon.about)
            }
            .navigationTitle(pokemon.name)
            .padding(.horizontal)
        }
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


