//
//  Knock010.swift
//  Knock
//

import SwiftUI

struct Knock010: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("SAMPLE1")
                    Text("SAMPLE2")
                    Text("SAMPLE3")
                } header: {
                    Text("SECTION1")
                }

                Section {
                    Text("SAMPLE4")
                    Text("SAMPLE5")
                    Text("SAMPLE6")
                } header: {
                    Text("SECTION2")
                }
            }
        }
        .font(.headline)
    }
}

#Preview {
    Knock010()
}
