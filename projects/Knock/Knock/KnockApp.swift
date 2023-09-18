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
                VStack {
                    NavigationLink {
                        Knock001().navigationTitle("NO.001")
                    } label: {
                        Label("NO.001", systemImage: "arrowshape.turn.up.right.fill")
                    }
                }.navigationTitle("Knock")
            }
        }
    }
}
