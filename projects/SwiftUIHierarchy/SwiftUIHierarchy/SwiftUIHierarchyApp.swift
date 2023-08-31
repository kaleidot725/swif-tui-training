import SwiftUI

@main
struct SwiftUIHierarchyApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                TabView {
                    ContentView()
                        .tabItem {
                            Label("Journal", systemImage: "book")
                        }

                    SettingsView()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                }
            }
        }
    }
}
