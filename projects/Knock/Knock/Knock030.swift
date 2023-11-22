//
//  Knock030.swift
//  Knock
//

import SwiftUI

struct Knock030: View {
    @State var isPresented = false

    var body: some View {
        GroupBox {
            Button(
                action: {
                    isPresented = true
                },
                label: {
                    Text("Touch Me!!")
                }
            )
        }.sheet(
            isPresented: $isPresented,
            onDismiss: {
                isPresented = false
            },
            content: {
                Text("Sheet")
            }
        )
    }
}

#Preview {
    Knock030()
}
