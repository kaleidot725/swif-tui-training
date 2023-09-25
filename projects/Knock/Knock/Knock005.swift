//
//  Knock005.swift
//  Knock
//

import SwiftUI

struct Knock005: View {
    var body: some View {
        HStack {
            Image("Sample")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()

            Spacer()

            Image("Sample")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()

            Spacer()

            Image("Sample")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()

            Spacer()

            Image("Sample")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()

            Spacer()

            Image("Sample")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
        }
        .padding()
    }
}

#Preview {
    Knock005()
}
