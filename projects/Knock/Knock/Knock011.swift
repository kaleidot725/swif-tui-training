//
//  Knock010.swift
//  Knock
//

import SwiftUI

struct Knock011: View {
    let numbers = ["ONE", "TWO", "THREE", "FOUR", "FIVE"]
    var body: some View {
        NavigationView {
            List(numbers, id: \.self) { number in
                NavigationLink {
                    Text(number)
                } label: {
                    Text(number)
                }
            }
        }
    }
}

#Preview {
    Knock011()
}
