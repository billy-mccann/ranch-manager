import SwiftUI
import Observation

@Observable
class NavigationManager {
  var path = NavigationPath()

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
