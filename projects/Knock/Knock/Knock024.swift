//
//  Knock024.swift
//  Knock
//

import SwiftUI

struct CardViewModifier: ViewModifier {
    let color: Color
    let radius: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
    }
}

extension View {
    func card(
        color: Color = Color.gray.opacity(0.4),
        radius: CGFloat = 8) -> some View
    {
        modifier(CardViewModifier(color: color, radius: radius))
    }
}

struct Knock024: View {
    var body: some View {
        VStack(alignment: .center, spacing: 64) {
            Text("RedShadow").card(color: .red, radius: 16)
            Text("BlueShadow").card(color: .blue, radius: 16)
            Text("LargeShadow").card(color: .green, radius: 32)
            Image("Sample")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .card(color: .yellow, radius: 32)
        }.padding(32)
    }
}

#Preview {
    Knock024()
}
