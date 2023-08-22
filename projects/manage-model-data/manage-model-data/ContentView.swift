

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BookView(book: globalBook)
            BookView(book: globalBook)
            PersonDemo()
        }
    }
}

#Preview {
    ContentView()
}
