//
//  KnockApp.swift
//  Knock
//
//  Created by 桂川 祐介 on 2023/09/18.
//

import SwiftUI

@main
struct KnockApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                NavigationLink {
                    Knock001()
                } label: {
                    Text("NO.001")
                }
            }.navigationTitle("Questions")
        }
    }
}
