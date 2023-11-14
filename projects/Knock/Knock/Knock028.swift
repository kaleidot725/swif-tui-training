//
//  Knock028.swift
//  Knock
//

import SwiftUI

struct Knock028: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: {
                        Text("Sample1")
                    }, label: {
                        Text("Snorlax")
                    }
                )

                NavigationLink(
                    destination: {
                        Text("Sample2")
                    }, label: {
                        Text("Ditto")
                    }
                )

                NavigationLink(
                    destination: {
                        Text("Sample3")
                    }, label: {
                        Text("Charamander")
                    }
                )

                NavigationLink(
                    destination: {
                        Text("Sample4")
                    }, label: {
                        Text("Squirtle")
                    }
                )
            }
        }
    }
}

#Preview {
    Knock028()
}
