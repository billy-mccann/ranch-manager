import SwiftUI

struct NavigationRouterView: View {
  @EnvironmentObject var navManager: NavigationManager

  var body: some View {
    NavigationStack(path: $navManager.path) {

      InnerContentView()

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
  NavigationRouterView()
    .environmentObject(NavigationManager())
}
