import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Journal").font(.title)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: Alignment.topLeading
        )
        .padding()
        .background(Color.blue)
    }
}

#Preview {
    ContentView()
}
