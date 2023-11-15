//
//  Knock029.swift
//  Knock
//

import SwiftUI

struct Knock029: View {
    @State var selectedNumber1 = "0"
    @State var selectedNumber2 = "0"

    var body: some View {
        HStack {
            Picker("SelectedNumber1", selection: $selectedNumber1) {
                ForEach(0 ..< 24) { index in
                    Text("\(index)").tag("\(index)")
                }
            }.pickerStyle(.inline)
            Picker("SelectedNumber2", selection: $selectedNumber2) {
                ForEach(0 ..< 60) { index in
                    Text("\(index)").tag("\(index)")
                }
            }.pickerStyle(.inline)
        }
    }
}

#Preview {
    Knock029()
}
