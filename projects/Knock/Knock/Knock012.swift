//
//  Knock012.swift
//  Knock
//

import SwiftUI

struct Knock012: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("CONTENT").navigationBarBackButtonHidden()
            } label: {
                Text("NAVIGATE")
            }
        }
    }
}

#Preview {
    Knock012()
}
