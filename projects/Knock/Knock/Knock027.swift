//
//  Knock025.swift
//  Knock
//

import SwiftUI

struct Knock027: View {
    @State private var text: String = "First Text"

    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                NavigationLink(
                    destination: {
                        Button(
                            action: {
                                text = "Second Text"
                            },
                            label: {
                                Text("Update")
                            }
                        )
                    },
                    label: {
                        Text("Navigate")
                    }
                )
            }
        }
    }
}

#Preview {
    Knock027()
}
