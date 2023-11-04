//
//  Knock023.swift
//  Knock
//

import SwiftUI

struct CardView<T>: View where T: View {
    let color: Color
    let radius: CGFloat

    @ViewBuilder
    let content: () -> T

    var body: some View {
        content()
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
    }
}

struct Knock023: View {
    var body: some View {
        VStack(alignment: .center, spacing: 64) {
            CardView(color: .red, radius: 16) {
                Text("RedShadow")
            }

            CardView(color: .blue, radius: 16) {
                Text("BlueShadow")
            }

            CardView(color: .green, radius: 32) {
                Text("LargeShadow")
            }

            CardView(color: .yellow, radius: 32) {
                Image("Sample")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
            }
        }.padding(32)
    }
}

#Preview {
    Knock023()
}
