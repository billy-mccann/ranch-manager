import SwiftUI

// DestinationContainer holds a destination (enum) as well as a bundle holding any/all data needed for the destination view.
struct DestinationContainer: Hashable {
  let destination: NavigationDestination
  let bundle: DestinationBundle?
}

// NavigationBundle is used to pass any deta required to the destination view.
struct DestinationBundle: Hashable {
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

