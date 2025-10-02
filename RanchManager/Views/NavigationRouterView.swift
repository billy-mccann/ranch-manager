import SwiftUI

struct NavigationRouterView<Content: View> : View {
  @EnvironmentObject var navManager: NavigationManager
  var contentView: Content

  var body: some View {
    NavigationStack(path: $navManager.path) {

      contentView

        .navigationDestination(for: NavigationDestination.self) { destination in

        switch destination {

        case .detailView(let type, let numberOfThings):
          DetailView(animalType: type, numberOfThings: numberOfThings)

        case .addCowView:
          AddCowView()
        }
      }
    }
  }
}

#Preview {
  NavigationRouterView(contentView: InnerContentView())
    .environmentObject(NavigationManager())
}
