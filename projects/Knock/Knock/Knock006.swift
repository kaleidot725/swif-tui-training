//
//  Knock006.swift
//  Knock
//

import SwiftUI

struct Knock006: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Sample")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()

                Text("This is a monster ball.")
            }.navigationTitle("Monster Ball")
        }
    }
}

#Preview {
    Knock006()
}
