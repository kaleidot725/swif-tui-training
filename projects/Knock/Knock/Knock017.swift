//
//  Knock017.swift
//  Knock
//

import SwiftUI

struct Knock017: View {
    @State private var isShowAlert1 = false
    @State private var isShowAlert2 = false

    var body: some View {
        VStack {
            Button("Button1") {
                isShowAlert1 = true
            }
            .alert(isPresented: $isShowAlert1) {
                Alert(
                    title: Text("Title1"),
                    message: Text("Message1"),
                    primaryButton: .default(
                        Text("Try Again"),
                        action: {}
                    ),
                    secondaryButton: .destructive(
                        Text("Cancel"),
                        action: {}
                    )
                )
            }

            Button("Button2") {
                isShowAlert2 = true
            }
            .alert(isPresented: $isShowAlert2) {
                Alert(
                    title: Text("Title2"),
                    message: Text("Message2"),
                    primaryButton: .default(
                        Text("Try Again"),
                        action: {}
                    ),
                    secondaryButton: .destructive(
                        Text("Cancel"),
                        action: {}
                    )
                )
            }
        }
    }
}

#Preview {
    Knock017()
}
