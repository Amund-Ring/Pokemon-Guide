# Pokémon Guide

A simple SwiftUI application that serves as a basic guide to different Pokémon categories and their respective Pokémon.

## Overview

This app allows users to:

- Browse different **Pokémon categories** (e.g., Electric, Grass).
- View a list of **Pokémon within a selected category**.
- See **detailed information** about each Pokémon, including stats and descriptions.

## Features and Skills Demonstrated

- **SwiftUI Views and Navigation**
  - Utilizes `NavigationStack` and `NavigationLink` for navigating between views.
  - Implements custom views like `CategoriesView`, `PokemonView`, and `DetailView`.

- **State Management with `@State`**
  - Manages state within views to handle data fetching and UI updates.
  - Uses `onAppear` to load data when the view appears.

- **Data Loading from JSON**
  - Loads and decodes local JSON data using `Codable` and `Bundle`.
  - Handles data models with `Category` and `Pokemon` structs conforming to `Identifiable` and `Codable`.

- **SwiftUI Layouts and Styling**
  - Uses `ScrollView`, `VStack`, `HStack`, and `LazyVGrid` for flexible and responsive layouts.
  - Applies view modifiers for styling, such as `foregroundColor`, `font`, and `padding`.
  - Utilizes `RoundedRectangle` and `Image` for custom UI elements.

- **Basic Error Handling**
  - Includes simple error printing for debugging during JSON decoding.

## Project Structure

- **Models**
  - `Category`: Represents a Pokémon category with a type (as `String`) and a list of `Pokemon`.
  - `Pokemon`: Represents an individual Pokémon with stats, description, and image name.

- **Views**
  - `CategoriesView`: Displays a list of categories for users to select.
  - `PokemonView`: Shows Pokémon within the selected category.
  - `DetailView`: Provides detailed stats and information about a selected Pokémon.

- **Services**
  - `DataService`: Handles loading and decoding data from `pokemonData.json`.

- **Resources**
  - `pokemonData.json`: Contains the data for categories and Pokémon.
  - **Assets**: Images used for Pokémon and icons in the app.

---

This project showcases fundamental SwiftUI concepts, including navigation, state management, data loading, and view layout, providing a solid foundation for building more complex SwiftUI applications.
