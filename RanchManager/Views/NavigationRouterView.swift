import SwiftUI

struct NavigationRouterView<Content: View> : View {
  @EnvironmentObject var navManager: NavigationManager
  var contentView: Content

  var body: some View {
    NavigationStack(path: $navManager.path) {

      contentView

      .navigationDestination(for: DestinationContainer.self) { container in

        switch container.destination {
        case .detailView:
          let detailViewBundle = container.bundle!.detailViewBundle!
          DetailView(animalType: detailViewBundle.animalType, numberOfThings: detailViewBundle.numberOfThings)
        }
      }
    }
  }
}

#Preview {
  NavigationRouterView(contentView: InnerContentView())
    .environmentObject(NavigationManager())
}
