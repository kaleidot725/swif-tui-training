//
//  BookDemo.swift
//  manage-model-data
//
//  Created by 桂川 祐介 on 2023/08/22.
//

import Foundation
import SwiftUI

var globalBook = Book(
    id: NSUUID().uuidString,
    title: "PROGRESSIVE UNIX",
    author: Author(
        id: NSUUID().uuidString,
        name : "UNIX MAN"
    ),
    isAvailable: false
)

@Observable struct Book: Identifiable {
    let id : String
    let title : String
    let author : Author
    var isAvailable : Bool
}

@Observable struct Author : Identifiable {
    let id : String
    let name : String
}

struct BookView: View {
    // Structの変更を検知できるように@Stateをつける必要がある
    // というのも基本的にStructはプロパティを後から変更できない仕様になっている
    // だがStructのプロパティを変更できないと、SwfitUIでコードを記述する場合には困ることがあるので、@Stateというプロパティラッパーを用意して変更を用意にするという、方式を採用しているらしい
    @State var book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
            Text(book.author.name)
            Text(book.isAvailable.description)
            Button(
                action: {
                    let date = Date.now.formatted()
                    let author = Author(
                        id: NSUUID().uuidString,
                        name: "AUTHOR \(date)"
                    )
                    book = Book(
                        id: NSUUID().uuidString,
                        title: "TITLE \(date)",
                        author: author,
                        isAvailable: true
                    )
                },
                label: {
                    Text("UPDATE")
                }
            )
            Button(
                action: {
                    book.isAvailable.toggle()
                },
                label: {
                    Text("TOGGLE")
                }
            )
        }
    }
}
