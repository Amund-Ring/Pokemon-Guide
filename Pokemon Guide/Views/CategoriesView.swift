//
//  ContentView.swift
//  Pokemon Guide
//
//  Created by Amund Ring on 14/09/2024.
//

import SwiftUI

struct CategoriesView: View {
    
    @State var categories = [Category]()
    let dataService = DataService()
    
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 20) {
                    
                    ForEach(categories) { category in
                        NavigationLink(destination: PokemonView(category: category)) {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(getCategoryColor(category: category.type))
                                
                                HStack {
                                    Image(systemName: getCategoryIcon(category: category.type))
                                        .imageScale(.large)
                                    
                                    Text(category.type)
                                        .bold()
                                        .font(.title3)
                                }
                                .padding(.vertical)
                                .foregroundColor(.black)
                            }
                            
                            
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .navigationTitle("Categories")
            //            .padding()
        }.onAppear {
            categories = dataService.getData()
        }
    }
    
    
    
    
    //    bolt, flame, leaf, drop
    func getCategoryIcon(category: String) -> String {
        switch category {
        case "Electric":
            return "bolt.circle"
        case "Grass":
            return "flame.circle"
        case "Fire":
            return "leaf.circle"
        case "Water":
            return "drop.circle"
        default:
            return ""
        }
    }
    
    
    func getCategoryColor(category: String) -> Color {
        switch category {
        case "Electric":
            return Color.yellow
        case "Grass":
            return Color.green
        case "Fire":
            return Color.red
        case "Water":
            return Color.blue
        default:
            return Color.gray
        }
    }
}

#Preview {
    CategoriesView()
}
