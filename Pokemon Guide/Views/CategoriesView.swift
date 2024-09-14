//
//  ContentView.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        
        
        NavigationStack {
            ScrollView() {
                
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Categories")
                NavigationLink(destination: PokemonView()) {
                    Text("Navigate to Test")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
}
