//
//  Knock018.swift
//  Knock
//

import SwiftUI

struct Knock018: View {
    @State var text = "Snorlax"

    var body: some View {
        VStack {
            Text(text)
            HStack {
                Image("Sample")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Button(
                    action: { text = "Forever" },
                    label: { Text("Tap ME!!") }
                ).buttonStyle(PlainButtonStyle())
            }.padding(8).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    Knock018()
}
