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
          if let detailViewBundle = container.bundle?.detailViewBundle {
            DetailView(animalType: detailViewBundle.animalType, numberOfThings: detailViewBundle.numberOfThings)
          } else {
            Text("Error: you shouldn't see this")
          }
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
