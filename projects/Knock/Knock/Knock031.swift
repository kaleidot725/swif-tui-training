//
//  Knock031.swift
//  Knock
//

import SwiftUI

struct Knock031: View {
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
        }.fullScreenCover(
            isPresented: $isPresented,
            onDismiss: {
                isPresented = false
            },
            content: {
                VStack {
                    Text("FullScreenCover")
                    Button(
                        action: {
                            isPresented = false
                        },
                        label: {
                            Text("Close")
                        }
                    )
                }
            }
        )
    }
}

#Preview {
    Knock031()
}
