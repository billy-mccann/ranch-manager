import SwiftUI

struct NavigationRouterView: View {
  @EnvironmentObject var navManager: NavigationManager

  var body: some View {
    NavigationStack(path: $navManager.path) {

      InnerContentView()

      .navigationDestination(for: NavigationRouter.self) { router in

        switch router.destination {
        case .detailView:
          let detailViewBundle = router.bundle!.detailViewBundle!
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
