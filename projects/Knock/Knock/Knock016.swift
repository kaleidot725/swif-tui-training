//
//  Knock015.swift
//  Knock
//

import SwiftUI

struct Knock016: View {
    @State private var isShowAlert = false
    var body: some View {
        VStack {
            Button("Button1") {
                isShowAlert = true
            }
            .alert(
                "Title1", isPresented: $isShowAlert
            ) {
                // ここにエラー処理を記述する
            } message: {
                Text("Message1")
            }

            Button("Button2") {
                isShowAlert = true
            }
            .alert(
                "Title2", isPresented: $isShowAlert
            ) {
                // ここにエラー処理を記述する
            } message: {
                Text("Message2")
            }
        }
    }
}

#Preview {
    Knock016()
}
