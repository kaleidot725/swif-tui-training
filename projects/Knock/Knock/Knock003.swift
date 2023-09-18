//
//  Knock003.swift
//  Knock
//

import SwiftUI

struct Knock003: View {
    var body: some View {
        VStack {
            Image("Sample")
                .resizable() // 画像のサイズを変えられるようにする
                .aspectRatio(contentMode: .fill) // 画像の比は崩さないが、領域からはみ出してもOK
                .frame(width: 150, height: 150) // 画像のサイズを指定する
                .clipShape(Circle()) // 領域からはみ出した領域を円でクリップする
        }
        .padding()
    }
}

#Preview {
    Knock003()
}
