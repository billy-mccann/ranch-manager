import SwiftUI

struct RootNavigationView<Content: View> : View {
  @Environment(NavigationManager.self) var navManager
  
  var contentView: Content

  var body: some View {
    @Bindable var navManager = navManager
    
    NavigationStack(path: $navManager.path) {

      contentView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
          Color.black.opacity(0.95)
        )

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
  RootNavigationView(contentView: MainView())
    .environment(NavigationManager())
}
