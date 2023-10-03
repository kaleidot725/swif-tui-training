//
//  Knock007.swift
//  Knock
//

import SwiftUI

struct Knock007: View {
    enum Pokemon: String, Identifiable, CaseIterable {
        case Picachu, Snorlax, SlowPoke, Meowth
        var id: Self { self }
    }

    @State
    private var selectionPokemon: Pokemon = .Picachu

    var body: some View {
        NavigationView {
            VStack {
                Picker("Pokemon", selection: $selectionPokemon) {
                    ForEach(Pokemon.allCases) { pokemon in
                        Text(pokemon.rawValue.capitalized)
                    }
                }.pickerStyle(.wheel) // PickerStyleでViewの見た目を変えることができる
            }
        }
    }
}

#Preview {
    Knock007()
}
