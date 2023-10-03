//
//  Knock008.swift
//  Knock
//

import SwiftUI

struct Knock008: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    Text("FirstTab")
                }.tabItem {
                    Label("FirstTab", systemImage: "1.square")
                }

                VStack {
                    Text("SecondTab")
                }.tabItem {
                    Label("SecondTab", systemImage: "2.square")
                }

                VStack {
                    Text("ThirdTab")
                }.tabItem {
                    Label("ThirdTab", systemImage: "3.square")
                }
            }
        }
        .font(.headline)
    }
}

#Preview {
    Knock008()
}
