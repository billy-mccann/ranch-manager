import SwiftUI

@main
struct RanchManagerApp: App {
  @State private var navManager = NavigationManager()

    var body: some Scene {
        WindowGroup {
          RootNavigationView(contentView: MainView())
            .environment(navManager)
            .preferredColorScheme(.dark)
        }
    }
}


