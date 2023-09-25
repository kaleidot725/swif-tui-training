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

                    NavigationLink {
                        Knock002().navigationTitle("NO.002")
                    } label: {
                        Label("NO.002", systemImage: "arrowshape.turn.up.right.fill")
                    }

                    NavigationLink {
                        Knock003().navigationTitle("NO.003")
                    } label: {
                        Label("NO.003", systemImage: "arrowshape.turn.up.right.fill")
                    }

                    NavigationLink {
                        Knock004().navigationTitle("NO.004")
                    } label: {
                        Label("NO.004", systemImage: "arrowshape.turn.up.right.fill")
                    }

                    NavigationLink {
                        Knock005().navigationTitle("NO.005")
                    } label: {
                        Label("NO.005", systemImage: "arrowshape.turn.up.right.fill")
                    }

                    NavigationLink {
                        Knock006().navigationTitle("NO.006")
                    } label: {
                        Label("NO.006", systemImage: "arrowshape.turn.up.right.fill")
                    }
                }.navigationTitle("Knock")
            }
        }
    }
}
