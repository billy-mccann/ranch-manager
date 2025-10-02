import SwiftUI

// All navigation destinations are added as cases to this enum and are used in our routing stack
enum NavigationDestination: Hashable {
  case detailView(animalType: String, numberOfThings: Int)
  case addCowView
}
