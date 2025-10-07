import SwiftUI

@main
struct RanchManagerApp: App {
  @State private var navManager = NavigationManager()

    var body: some Scene {
        WindowGroup {
          NavigationRouterView(contentView: InnerContentView())
            .environment(navManager)
        }
    }
}
