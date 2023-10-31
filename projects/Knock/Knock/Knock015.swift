//
//  Knock015.swift
//  Knock
//

import SwiftUI

struct Knock015: View {
    @State private var isShowAlert = false
    var body: some View {
        Button("Tap to show alert") {
            isShowAlert = true
        }
        .alert(isPresented: $isShowAlert) {
            Alert(
                title: Text("Title"),
                message: Text("Message"),
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

#Preview {
    Knock015()
}
