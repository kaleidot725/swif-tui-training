

import SwiftUI

var globalBook = Book(
    id: NSUUID().uuidString,
    title: "PROGRESSIVE UNIX",
    author: Author(
        id: NSUUID(
        ).uuidString,
        name : "UNIX MAN"
    ),
    isAvailable: true
)

@Observable struct Book: Identifiable {
    var id : String
    var title : String
    var author : Author
    var isAvailable : Bool
}

@Observable struct Author : Identifiable {
    var id : String
    var name : String
}

struct BookView: View {
    var book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
            Text(book.author.name)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            BookView(
                book: globalBook
            )
            Button(
                action: {
                    globalBook.title = "UPDATE TITLE"
                },
                label: {
                    Text("UPDATE")
                }
            )
        }
    }
}

#Preview {
    ContentView(
    )
}
