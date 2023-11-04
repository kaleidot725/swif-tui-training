//
//  Knock022.swift
//  Knock
//

import SwiftUI

struct Knock022: View {
    private let title = "I ❤️ Snorlax!"
    private let details = "Snorlax is most cute & cool & powerful Pokemon"

    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.system(size: 16, weight: .bold))
            Text(createDetailText())
        }.padding(32)
    }

    private func createDetailText() -> AttributedString {
        var attributedString = AttributedString(details)
        if let range = attributedString.range(of: "Snorlax") {
            attributedString[range].foregroundColor = .red
        }
        if let range = attributedString.range(of: "is most") {
            attributedString[range].foregroundColor = .blue
        }
        if let range = attributedString.range(of: "cute & cool & powerful") {
            attributedString[range].foregroundColor = .green
        }
        if let range = attributedString.range(of: "Pokemon") {
            attributedString[range].foregroundColor = .yellow
        }
        return attributedString
    }
}

#Preview {
    Knock022()
}
