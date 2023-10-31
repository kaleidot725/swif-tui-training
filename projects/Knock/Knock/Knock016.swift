//
//  Knock015.swift
//  Knock
//

import SwiftUI

struct Knock016: View {
    @State private var isShowAlert1 = false
    @State private var isShowAlert2 = false

    var body: some View {
        VStack {
            Button("Button1") {
                isShowAlert1 = true
            }
            .alert(
                "Title1", isPresented: $isShowAlert1
            ) {
                // ここにエラー処理を記述する
            } message: {
                Text("Message1")
            }

            Button("Button2") {
                isShowAlert2 = true
            }
            .alert(
                "Title2", isPresented: $isShowAlert2
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
