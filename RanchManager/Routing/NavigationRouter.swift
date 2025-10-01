import SwiftUI

// NavigationRouter contains a destination (enum) as well as a navigationBundle holding any/all data needed for the destination view.
struct NavigationRouter: Hashable {
  let destination: NavigationDestination
  let bundle: NavigationBundle?
}

// NavigationBundle is used to pass any deta required to the destination view.
struct NavigationBundle: Hashable {
  var detailViewBundle: DetailViewBundle?
}

// Data required to populate a new DetailView
struct DetailViewBundle: Hashable {
  var animalType: String
  var numberOfThings: Int
}

// All navigation destinations are added as cases to this enum and are used in our routing stack
enum NavigationDestination {
  case detailView
}

