//
//  Knock009.swift
//  Knock
//

import SwiftUI

struct Knock009: View {
    @State private var text: String = "INITIALIZED"

    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                Button(
                    action: {
                        text = "UPDATED"
                    },
                    label: {
                        Text("Update Text")
                    }
                )
            }
        }
        .font(.headline)
    }
}

#Preview {
    Knock009()
}
