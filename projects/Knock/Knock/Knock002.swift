//
//  Knock002.swift
//  Knock
//

import SwiftUI

struct Knock002: View {
    var body: some View {
        VStack {
            Image("Sample")
                .resizable() // 画像のサイズを変えられるようにする
                .aspectRatio(contentMode: .fill) // 画像の比は崩さないが、領域からはみ出してもOK
                .frame(width: 150, height: 200) // 画像のサイズを指定する
                .clipped() // 領域からはみ出した領域をクリップする
        }
        .padding()
    }
}

#Preview {
    Knock002()
}
