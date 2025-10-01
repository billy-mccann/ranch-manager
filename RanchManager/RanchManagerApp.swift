import SwiftUI

@main
struct RanchManagerApp: App {
  @StateObject private var navManager = NavigationManager()

    var body: some Scene {
        WindowGroup {
          NavigationRouterView()
            .environmentObject(navManager)
        }
    }
}
