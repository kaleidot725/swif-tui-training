//
//  Knock004.swift
//  Knock
//

import SwiftUI

struct Knock004: View {
    var body: some View {
        VStack {
            Image("Sample")
                .resizable() // 画像のサイズを変えられるようにする
                .aspectRatio(contentMode: .fill) // 画像の比は崩さないが、領域からはみ出してもOK
                .frame(width: 150, height: 150) // 画像のサイズを指定する
                .border(Color.red, width: CGFloat(1.0))
                .clipShape(Circle()) // 領域からはみ出した領域を円でクリップする
                .overlay(Circle().stroke(Color.red, lineWidth: 8)) // Overlayで特定のViewを重ねることができる、今回はCircleを背景なし、線を赤で描画してみた。
        }
        .padding()
    }
}

#Preview {
    Knock004()
}
