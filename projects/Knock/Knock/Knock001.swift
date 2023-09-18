//
//  Knock001.swift
//  Knock
//

import SwiftUI

struct Knock001: View {
    var body: some View {
        VStack {
            Image("Sample")
                .resizable() // 画像のサイズを変えられるようにする
                .aspectRatio(contentMode: .fit) // 画像の比は崩さないようにする
                .frame(width: 150, height: 200) // 画像のサイズを指定する
                .background(Color.black) // 画像の比を変えないので、余る領域に背景色をつける
        }
        .padding()
    }
}

#Preview {
    Knock001()
}
