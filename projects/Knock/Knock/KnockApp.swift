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
                List {
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
                    NavigationLink {
                        Knock007().navigationTitle("NO.007")
                    } label: {
                        Label("NO.007", systemImage: "arrowshape.turn.up.right.fill")
                    }
                    NavigationLink {
                        Knock008().navigationTitle("NO.008")
                    } label: {
                        Label("NO.008", systemImage: "arrowshape.turn.up.right.fill")
                    }
                    NavigationLink {
                        Knock009().navigationTitle("NO.009")
                    } label: {
                        Label("NO.009", systemImage: "arrowshape.turn.up.right.fill")
                    }
                    NavigationLink {
                        Knock010().navigationTitle("NO.010")
                    } label: {
                        Label("NO.010", systemImage: "arrowshape.turn.up.right.fill")
                    }
                    NavigationLink {
                        Knock011().navigationTitle("NO.011")
                    } label: {
                        Label("NO.011", systemImage: "arrowshape.turn.up.right.fill")
                    }
                    NavigationLink {
                        Knock012().navigationTitle("NO.012")
                    } label: {
                        Label("NO.012", systemImage: "arrowshape.turn.up.right.fill")
                    }
                }.navigationTitle("Knock")
            }
        }
    }
}
