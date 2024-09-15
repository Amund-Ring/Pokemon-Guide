//
//  PokemonView.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import SwiftUI

struct PokemonView: View {
    
    var category: Category
    
    var body: some View {
        VStack() {
            
            
            Text("PokemonView")
            Text(category.type)
            
            NavigationLink(destination: DetailView()) {
                Text("Navigate to DetailView")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }.navigationTitle(category.type).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PokemonView(category: Category(type: "Electric", pokemon: []))
}
