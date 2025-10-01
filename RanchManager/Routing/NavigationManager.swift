import SwiftUI

class NavigationManager: ObservableObject {
  @Published var path = NavigationPath()

  func navigateTo<T: Hashable>(_ destination: T) {
    path.append(destination)
  }

  func navigateBack() {
    if !path.isEmpty {
      path.removeLast()
    }
  }

  func navigateToRoot() {
    path = NavigationPath()
  }
}
