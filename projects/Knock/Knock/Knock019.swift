//
//  Knock019.swift
//  Knock
//

import SwiftUI

struct Knock019: View {
    @State var isShowingSheet = false
    @State var number: String = ""
    @State var hasError: Bool = false

    var body: some View {
        VStack {
            TextField(
                text: $number,
                label: { Text("Input numbers") }
            )
            .onChange(of: number) {
                hasError = !number.isEmpty && Int(number) == nil
            }
            .padding(16)
            .border(.secondary)

            Button(
                action: {
                    isShowingSheet = true
                },
                label: {
                    Text("Show sheet")
                }
            ).sheet(
                isPresented: $isShowingSheet,
                content: { Text("\(number) can convert to Int") }
            )
        }
        .padding(32)
        .alert("Error", isPresented: $hasError) {
            // エラー時の処理
        } message: {
            Text("Please input number.")
        }
    }
}

#Preview {
    Knock019()
}
