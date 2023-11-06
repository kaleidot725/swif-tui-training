//
//  Knock025.swift
//  Knock
//

import SwiftUI

struct Knock025: View {
    @State private var items = ["Snorlax", "Ditto", "Charmander", "Diglett"]
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 15) {
                Text("STATUS").font(.title3)
                Text("ITEM COUNT : \(items.count)").font(.title3)
            }.padding(16)

            List {
                ForEach(items, id: \.self) { text in
                    Text(text)
                }.onDelete(
                    perform: { indexSet in
                        items.remove(atOffsets: indexSet)
                    }
                )
            }.toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    Knock025()
}
