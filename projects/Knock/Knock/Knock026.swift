//
//  Knock025.swift
//  Knock
//

import SwiftUI

struct Knock026: View {
    private let items = ["Snorlax", "Pikachu", "Psyduck", "Blastoise", "Slowpoke"]
    @State private var isSelected: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            List {
                ForEach(items, id: \.self) { text in
                    Text(text)
                        .onTapGesture {
                            isSelected = true
                        }
                        .alert(isPresented: $isSelected) {
                            Alert(
                                title: Text("Name"),
                                message: Text(text),
                                dismissButton: .default(
                                    Text("Close"),
                                    action: { isSelected = false }
                                )
                            )
                        }
                }
            }
        }
    }
}

#Preview {
    Knock026()
}
