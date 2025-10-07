import SwiftUI

struct DetailView: View {
  var animalType: String
  var numberOfThings: Int
    var body: some View {
      Spacer()
      Text("The number of \(animalType.lowercased()) is: \(numberOfThings)")
      Spacer()
      GoToAddCowButton()
      Spacer()
    }
}

#Preview {
  DetailView(animalType: CowType.Steers.rawValue, numberOfThings: 262).environment(NavigationManager())
}
