//
//  Knock013.swift
//  Knock
//

import SwiftUI

struct Knock013: View {
    var body: some View {
        List {
            Section {
                Text("Snorlax")
                Text("Meowth")
                Text("Ditto")
            } header: {
                Text("Normal")
            }

            Section {
                Text("Vulpix")
                Text("Arcanine")
                Text("Charmander")
            } header: {
                Text("Fire")
            }
        }.listStyle(.plain)
    }
}

#Preview {
    Knock013()
}
