import SwiftUI

struct NavigationRouterView<Content: View> : View {
  @Environment(NavigationManager.self) var navManager
  
  var contentView: Content

  var body: some View {
    @Bindable var navManager = navManager
    
    NavigationStack(path: $navManager.path) {

      contentView

        .navigationDestination(for: NavDestination.self) { destination in

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
    .environment(NavigationManager())
}
