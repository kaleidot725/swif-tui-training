//
//  Knock014.swift
//  Knock
//

import SwiftUI

struct Knock014: View {
    @State private var isShowAlert = false
    var body: some View {
        Button("ALERT!!") {
            isShowAlert.toggle()
        }
        .alert("Error", isPresented: $isShowAlert) {
            // エラーが発生した時の処理
        } message: {
            Text("Happen error.")
        }
    }
}

#Preview {
    Knock014()
}
